{ stdenv }:

stdenv.mkDerivation {
  name = "xf86-input-cmt";
  src = fetchFromGithub {
    owner = "hugegreenbug";
    repo = "xf86-input-cmt";
    sha256 = "1vwndgidlvirpjx7841a7i8fvxybbh8xjxdsgq2azqi3gjrggvay"
  }
  phases = "installPhase";

  # bash script for how my derivation is built
  installPhase = ''
    
  '';
}
