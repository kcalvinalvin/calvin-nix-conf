{ stdenv, };

stdenv.mkDerivation {
  name = "xf86-input-cmt";
  src = fetchFromGithub {
    owner = "hugegreenbug";
    repo = "xf86-input-cmt";
    }
  }
  phases = "installPhase";

  # bash script for how my derivation is built
  installPhase = ''
    
  '';
}
