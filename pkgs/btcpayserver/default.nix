{ stdenv, fetchFromGitHub, fetchurl, dotnet-sdk, NBXplorer, dotnetPackages }:
#on nix-bitcoin replace altcoins.bitcoin with bitcoind

let

  deps = import ./deps.nix {inherit fetchurl;};

in

stdenv.mkDerivation rec {
  name = "btcpayserver";
  version = "1.0.3.118";

  src = fetchFromGitHub {
    owner = "btcpayserver";
    repo = "btcpayserver";
    rev = "v${version}";
    sha256 = "01g83bwgwci45fvqpszyimwn9ki3d6n78wbd9p9sgpl9cv25spjg";
  };
  #for nix-bitcoin replace altcoins.bitcoin with bitcoind
  buildInputs = [dotnet-sdk dotnetPackages.Nuget];

  buildPhase = ''
    mkdir home
    export HOME=$PWD/home

    export DOTNET_CLI_TELEMETRY_OPTOUT=1
    export DOTNET_SKIP_FIRST_EXPERIENCE=1

    nuget sources Disable -Name "nuget.org"

    for package in ${toString deps}; do
      nuget add $package -Source nixos
    done

    dotnet restore --source nixos BTCpayserver/BTCpayserver.csproj
    dotnet build --no-restore -c Release BTCpayserver/BTCpayserver.csproj
  '';
  
  installPhase = ''
    mkdir -p $out/bin/
    echo -e '#!/usr/bin/env bash \n #launch BTCpayserver \n scriptdir=`dirname $(readlink $(which btcpayserver))` \n dotnet exec --additionalprobingpath $scriptdir/../home/.nuget/packages/ $scriptdir/../BTCPayServer/bin/Release/netcoreapp2.1/BTCPayServer.dll' > $out/bin/run.sh
    chmod +x $out/bin/run.sh
    cp -r ./* $out
    ln -s $out/bin/run.sh $out/bin/BTCPayServer
  '';

  dontStrip = true;

  meta = {
    description = "BTCPay Server is a self-hosted, open-source cryptocurrency payment processor. It's secure, private, censorship-resistant and free.";
    longDescription = ''
      BTCPay Server is a free and open-source cryptocurrency payment processor which allows you to receive payments in Bitcoin and altcoins directly, with no fees, transaction cost or a middleman.

BTCPay is a non-custodial invoicing system which eliminates the involvement of a third-party. Payments with BTCPay go directly to your wallet, which increases the privacy and security. Your private keys are never uploaded to the server. There is no address re-use, since each invoice generates a new address deriving from your xpubkey.

The software is built in C# and conforms to the invoice API of BitPay. It allows for your website to be easily migrated from BitPay and configured as a self-hosted payment processor.

You can run BTCPay as a self-hosted solution on your own server, or use a third-party host.

The self-hosted solution allows you not only to attach an unlimited number of stores and use the Lightning Network but also become the payment processor for others.

Thanks to the apps built on top of it, you can use BTCPay to receive donations, start a crowdfunding campaign or have an in-store Point of Sale.
  '';
    homepage = "https://btcpayserver.org";
    license = stdenv.lib.licenses.mit;
    platforms = stdenv.lib.platforms.linux;
  }; 
}
