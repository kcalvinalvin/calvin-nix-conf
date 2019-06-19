{ stdenv }:

stdenv.mkDerivation {
  name = "xf86-input-cmt";
  src = fetchFromGithub {
    owner = "hugegreenbug";
    repo = "xf86-input-cmt";
<<<<<<< HEAD
    }
=======
    sha256 = "1vwndgidlvirpjx7841a7i8fvxybbh8xjxdsgq2azqi3gjrggvay"
>>>>>>> 05bb316ea1ba7a355383a007a08960fe9d5f4140
  }
  phases = "installPhase";

  # bash script for how my derivation is built
  installPhase = ''
    
  '';
}
