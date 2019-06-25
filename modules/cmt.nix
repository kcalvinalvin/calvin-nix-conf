
{ config, pkgs, lib, ... }:

let
  cfg = config.hardware.samus.cmt;
in

with lib;

{
  options = {
    hardware.samus.cmt = {
      enable = mkEnableOption "Use Chrome Multitouch input (cmt)";
    };
  };

  config = mkIf cfg.enable {
    services.xserver.modules = [ pkgs.xf86-input-cmt ];

    # 39 is before 40-libinput
    environment.etc."X11/xorg.conf.d/39-touchpad-cmt.conf".source =
      "${pkgs.chromium-xorg-conf}/40-touchpad-cmt.conf";

    environment.etc."X11/xorg.conf.d/50-touchpad-cmt-samus.conf".source =
      "${pkgs.chromium-xorg-conf}/50-touchpad-cmt-samus.conf";
  };
}
