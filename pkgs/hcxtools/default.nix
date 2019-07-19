{ stdenv, fetchFromGitHub, zlib, openssl, curl, libpcap }: 

stdenv.mkDerivation rec {
  name = "hcxtools";
  version = "5.1.7";

  src = fetchFromGitHub {
    owner = "ZerBea";
    repo = "hcxtools";
    rev = "${version}";
    sha256 = "05sjbmv2wq3nlmammrwxqc62c4sagjjgczzddr1jcqkf6kywzkl8";
  };

  buildInputs = [ openssl zlib curl ];

  installPhase = ''
    mkdir -p $out/bin/
    cp -r ./* $out/
  '';

  dontStrip = true;

  meta = {
    description = "Small set of tools convert packets from captures (h = hash, c = capture, convert and calculate candidates, x = different hashtypes) for the use with latest hashcat or John the Ripper.";
    license = stdenv.lib.licenses.mit;
    platforms = stdenv.lib.platforms.linux;
  };
}
