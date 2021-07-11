let
  # TODO change back to master once the PR gets merged
  moz_overlay = import (builtins.fetchTarball https://github.com/andersk/nixpkgs-mozilla/tarball/3499e085fb6ae1a846bcf425fa9c98a3b77480da);
  nixpkgs = import <nixpkgs> { overlays = [ moz_overlay ]; };
  # uncomment and change date to use rust nightly
  #rustNightlyChannel = (nixpkgs.rustChannelOf { date = "2019-01-26"; channel = "nightly"; }).rust;
  rustStableChannel = nixpkgs.latest.rustChannels.stable.rust.override {
    extensions = [
      "rust-src"
      "rls-preview"
      "clippy-preview"
      "rustfmt-preview"
    ];
  };

  pkgs = import <nixpkgs> {};
  myvim = import ./qwerty-vim {inherit pkgs; };
in
with nixpkgs;

stdenv.mkDerivation {
  name = "moz_overlay_shell";
  buildInputs = [
    myvim

    rustStableChannel
    rls
    rustup
  ];
  shellHook = ''
    export PATH="${myvim}/bin":$PATH
    export VIM_PATH=${myvim}
  '';
}
