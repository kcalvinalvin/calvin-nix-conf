{ config, lib, ...  }:

with lib;

let
  cfg = config.hardware.backlight;
in

{
  options.hardware.backlight = {
    enable = mkEnableOption "Enable xbacklight";
  };

  config = lib.mkIf cfg.enable {
    services.xserver.modules = [ pkgs.xbacklight ];

    environment.etc."X11/xorg.conf.d/xbacklight.conf".source = 
      ./conf;
  };
}
