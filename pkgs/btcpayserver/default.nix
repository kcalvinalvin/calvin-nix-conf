{ stdenv, fetchgit, dotnet-sdk, NBXplorer, dotnetPackages }:
#on nix-bitcoin replace altcoins.bitcoin with bitcoind

stdenv.mkDerivation rec {
  name = "btcpayserver";
  version = "1.0.3.118";

  src = fetchgit {
    url = "https://github.com/btcpayserver/btcpayserver.git";
    rev = "v${version}";
    sha256 = "17r2x9v6bf1d8jcd45r5cw8fzx9al695bk7la3cc88332sclmvk9";
  };
  #for nix-bitcoin replace altcoins.bitcoin with bitcoind
  buildInputs = [dotnet-sdk, makeWrapper, dotnetPackages.Nuget];

  #configurePhase = ''
    #sed -i 's/  

  buildPhase = ''
    ./build.sh
  '';
  
  installPhase = ''
    mkdir -p $out/bin
    cp -r btcpayserver $out/bin
  '';

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
    #license = licenses.mit;
    #platforms = 
  }; 
}
