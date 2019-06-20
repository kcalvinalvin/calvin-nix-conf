{ stdenv, fetchFromGithub }:

stdenv.mkDerivation {
  name = "libgestures";
  version = "0.01";

  src = fetchFromGithub {
    owner = "hugegreenbug";
    repo = "libgestures";
    sha256 = "1vwndgidlvirpjx7841a7i8fvxybbh8xjxdsgq2azqi3gjrggvay";
  }
  phases = "installPhase";
  
  buildPhase = ''


  '';

  # bash script for how my derivation is built
  installPhase = ''
        
  '';
}
