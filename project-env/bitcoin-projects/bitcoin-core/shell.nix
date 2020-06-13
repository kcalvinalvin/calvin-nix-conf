# alias import <nixpkgs> {} to pkgs
let
  pkgs = import <nixpkgs> {};
in

with pkgs; # nix syntax to declare that we want to use packages from nixpkgs

stdenv.mkDerivation rec { # recursive
  name = "bitcoin";
  env = buildEnv { name = name; paths = buildInputs; };
  nativeBuildInputs = [
    pkgconfig
    autoreconfHook
  ];
  buildInputs = [
    openssl
    db48
    boost
    zlib
    zeromq
    miniupnpc
    libevent
    utillinux
    python38Packages.pyzmq
  ];
  configureFlags = [
    "--with-boost-libdir=${boost.out}/lib"
  ];
  checkInputs = [
    rapidcheck
    python3
  ];
  # nix-shell env as the derivation we built
  # Point to the boost lib that we built
  shellHook = ''
    export NIX_SHELL_ENV=${name}
    export USE_BOOST_LIBDIR="${boost.out}/lib"
  '';
}
