let
  pkgs = import <nixpkgs> {};

  # Use llvm env.
  stdenv = pkgs.llvmPackages_12.stdenv;

  # Needed for linking. Otherwise nix will use gnu binutils and will result in
  # a linking error.
  bintools = pkgs.llvmPackages_12.bintools;
in

with pkgs;
stdenv.mkDerivation rec {
  name = "bitcoin";
  env = buildEnv { name = name; paths = buildInputs; };

  # Everything that goes in here is wrapped so that the libraries for these
  # are automatically linked.
  nativeBuildInputs = [
    # ld, ar and other stuff.
    bintools

    # To generate compile_commands.json
    bear

    # For clangd linking.
    clang-tools

    # make stuff
    pkgconfig
    autoreconfHook

    # TODO Not sure if this is needed in nativeBuildInputs. Maybe it can be
    # in buildInputs.
    ccache
  ];

  # anything that you'd `apt install` would go here.
  buildInputs = [
    # bitcoin dependencies
    db48
    sqlite3
    boost
    zlib
    zeromq
    miniupnpc
    libevent
    utillinux
    python38Packages.pyzmq

    # doxygen stuff
    doxygen
    graphviz
  ];

  # '$configureFlags' to access these in the shell.
  # You can add more flags here.
  configureFlags = [
    "--disable-bench"
    "--disable-tests"
    "--disable-wallet"
    "--with-boost-libdir=${boost.out}/lib"
  ];

  # These will be set in the shell.
  shellHook = ''
    # Just so that you can find the path for boost.  Not really needed.
    export BOOST_LIBDIR="${boost.out}/lib"
  '';
}
