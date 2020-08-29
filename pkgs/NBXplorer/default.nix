{ stdenv, fetchFromGitHub, fetchurl, makeWrapper, dotnetCorePackages, dotnetPackages }:

let
  deps = import ./deps.nix {inherit fetchurl;};

  dotnet-sdk = dotnetCorePackages.sdk_3_1;
in

stdenv.mkDerivation rec {
  name = "NBXplorer";
  version = "2.1.41";

  src = fetchFromGitHub {
    owner = "dgarage";
    repo = "NBXplorer";
    rev = "v${version}";
    sha256 = "155xrjv7ikwid4v0byswkjnzdvm0sjqqd8jsprllpg6zi50sn5pg";
  };

  buildInputs = [dotnet-sdk dotnetPackages.Nuget];

  buildPhase = ''
    mkdir home
    export HOME=$PWD/home

    #not sure why these two are needed for dotnet on nix stuff but if you don't have it it'll throw an error
    export DOTNET_CLI_TELEMETRY_OUTPUT=1
    export DOTNET_SKIP_FIRST_TIME_EXPERIENCE=1

    #disable nuget from downloading from online repo
    nuget sources Disable -Name "nuget.org"

    #add nuget deps
    for package in ${toString deps}; do
      nuget add $package -Source nixos
    done

    #dotnet will restore from online repo if not specified as such
    dotnet restore --source nixos NBXplorer/NBXplorer.csproj
    dotnet build --no-restore -c Release NBXplorer/NBXplorer.csproj
  '';

  installPhase = ''
    mkdir -p $out/bin/
    echo -e '#!/usr/bin/env bash \n #launch NBXplorer \n scriptdir=`dirname $(readlink $(which NBXplorer))` \n dotnet exec --additionalprobingpath $scriptdir/../home/.nuget/packages/ $scriptdir/../NBXplorer/bin/Release/netcoreapp2.1/NBXplorer.dll' > $out/bin/run.sh
    chmod +x $out/bin/run.sh
    cp -r ./* $out/
    ln -s $out/bin/run.sh $out/bin/NBXplorer
  '';

  dontStrip = true;

  meta = {
    description = "A minimalist UTXO tracker for HD Cryptocurrency Wallets.";
    license = stdenv.lib.licenses.mit;
    platforms = stdenv.lib.platforms.linux;
  };
}
