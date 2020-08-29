{ stdenv, config, pkgs, callPackage, ... }:

let
    qwerty-vim = import ./qwerty-vim {inherit pkgs; };
in

{
  imports = [
    ./tmux
  ];
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  home.packages = [
    pkgs.direnv
    qwerty-vim
  ];
  services.lorri.enable = true;

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "20.03";
}
