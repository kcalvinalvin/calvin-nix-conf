{ stdenv, config, pkgs, ... }:

let
    nvimsettings = import ./vim-settings;
in

{
  imports = [
    ./tmux
  ];
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  programs.neovim = nvimsettings pkgs;

  home.packages = [
    pkgs.direnv
    pkgs.rnix-lsp
    pkgs.silver-searcher
  ];
  #services.lorri.enable = true; # annoying since lorri keeps constantly re-evaluating

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
