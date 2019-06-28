{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "Calvin Kim";
    userEmail = "ccychc@gmail.com";
  };
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
