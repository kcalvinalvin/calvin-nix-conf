{ stdenv, fetchgit, fetchurl, makeWrapper, dotnet-sdk, dotnetPackages }:

let

  deps = import ./deps.nix { inherit fetchurl; };

in

stdenv.mkDerivation rec {
  name = "NBXplorer";
  version = "2.0.0.51";
  
  src = fetchgit {
    url = "https://github.com/dgarage/NBXplorer.git";
    rev = "v${version}";
    sha256 = "02dscrij86frcys1z3yvsx54d3766zqp10kc2ay7yggxf2rav92q";
  };

  buildInputs = [dotnet-sdk makeWrapper dotnetPackages.Nuget ];
  
  patchPhase = ''
    for f in $(find . -iname "*.csproj"); do
      sed -i '/Include="Microsoft.SourceLink.Github"/d' $f
    done
  '';

  buildPhase = ''
    mkdir home
    export HOME=$PWD/home
    export DOTNET_CLI_TELEMETRY_OUTPUT=1
    export DOTNET_SKIP_FIRST_TIME_EXPERIENCE=1

    nuget sources Disable -Name "nuget.org"
    
    for package in ${toString deps}; do
      nuget add $package -Source nixos
    done
   
    dotnet restore --source nixos src/NBXplorer.sln
    dotnet build --no-restore -c Release src/NBXplorer.sln
  '';

  installPhase = ''
    mkdir -p $out/{bin/NBXplorer,lib/NBXplorer}
    cp -r bin/Release/* $out/lib/NBXplorer
    echo -e '#!/bin/bash \n #launch nbxplorer \n dotnet run --no-launch-profile --no-build -c Release -p "/usr/lib/nbxplorer/NBXplorer/NBXplorer.csproj" -- $@' > $out/lib/NBXplorer/run.sh
    makeWrapper "$out/lib/NBXplorer/run.sh $out/bin/NBXplorer
  '';  
 
  meta = {
    description = "A minimalist UTXO tracker for HD Cryptocurrency Wallets.";
    #license and platforms can't find the needed nix files since it requires
    #full copy of nixpkgs
    #license = licenses.mit;
    #platforms = 
  };
} 
