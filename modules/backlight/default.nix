{ config, pkgs, lib, ...  }:

with lib;

let
  cfg = config.hardware.backlight;
in

{
  options.hardware.backlight = {
    enable = mkEnableOption "Enable xbacklight";
  };

  config = lib.mkIf cfg.enable {
    environment.etc."X11/xorg.conf.d/xbacklight.conf".source = 
      ./conf;
  };
}
