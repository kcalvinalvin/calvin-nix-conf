{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation rec { 
  name = "hcxdumptool";
  version = "5.1.7";

  src = fetchFromGitHub {
    owner = "ZerBea";
    repo = "hcxdumptool";
    rev = "${version}";
    sha256 = "0fd0k5ahiikdbs4vsnh9n1fpiai3vgb4wvkv8hz7nbpmx8hy4bg3";
  };

  installPhase = ''
    mkdir -p $out/bin/hcxpioff
  '';
 
  meta = {
    description = "Small tool to capture packets from wlan devices.";
    license = stdenv.lib.licenses.mit;
    platforms = stdenv.lib.platforms.linux;
  };
}
