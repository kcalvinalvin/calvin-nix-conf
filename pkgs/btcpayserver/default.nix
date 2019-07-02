{ stdenv, fetchFromGithub, dotnet-sdk }:

let version = "stable"; in 

stdenv.mkDerivation {
  name = "btcpayserver-${version}";
  version = "stable";

  src = fetchFromGithub {
    owner = "btcpayserver";
    repo = "btcpayserver";
    rev = "v${version}";
    sha256 = "0nivwmzir8f8hiyc52gcpgh6vn4cj6c8an3ahqr9zmj12ybn75bs";
  };
 
  buildInputs = [dotnet-sdk];
  builder = ./build.sh;
 
  meta = {
    description = "BTCPay Server is a self-hosted, open-source cryptocurrency payment processor. It's secure, private, censorship-resistant and free.";
    homepage = "https://btcpayserver.org";
    #license = licenses.mit;
  }; 
}
