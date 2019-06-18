{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
    ./hardware-configuration.nix
    ];
    
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  
    networking.hostname = "bitcoin";
    networking.wireless.enable = true;
    #allow shit programs
    nixpkgs.config.allowUnfree = true;
    
    environment.systemPackages = [
      pkgs.chromium
      pkgs.mosh
      pkgs.git
      pkgs.tmux
      pkgs.tree
      pkgs.python
      pkgs.gcc
      pkgs.vim
    ];
    
    i18n = {
      consoleFont = "Lat2-Terminus16";
      consoleKeyMap = "us";
      defaultLocale = "en_US.UTF-8";
    };
    
    i18n.inputMethod = {
      enabled = "uim";
    };
    
    time.timeZone = "Asia/Seoul";
    
    sound.enable = true;
    hardware.pulseaudio.enable = true;
    
    services.xserver.enable = true;
    services.xserver.desktopManager = {
      xfce.enable = true;
      default = "xfce";
    }
    
    #TODO add chromeos driver
    services.xserver.libinput.enable = true;
    
    users.users.username = { #choose a username
      isNormalUser = true;
      extraGroups = [ "wheel, networkmanager" ];
    };
    system.stateVersion = "19.03";
