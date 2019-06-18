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
    ];
    
    i18n.inputMethod = {
      consoleFont = "Lat2-Terminus16";
      consoleKeyMap = "us";
      defaultLocale = "en_US.UTF-8";
      enabled = "uim";
    };
    
    time.timeZone = "Asia/Seoul";
    
    sound.enable = true;
    hardware.pulseaudio.enable = true;
    
    services.xserver.enable = true;
    services.xserver.windowManager.i3.enable = true;
    
    users.users.username = { #choose a username
      isNormalUser = true;
      extraGroups = [ "wheel", "networkmanager" ];
      passwd = "psswd"; #Choose a password
    };
    system.stateVersion = "19.03";
