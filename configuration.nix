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
    
  environment.systemPackages = with pkgs; [
    firefox
    mosh
    git
    tmux
    tree
    python
    gcc
    vim
    vlc
    gnumake
    unzip
    blueman
    gnupg
    jsoncpp
	#needed for the window manager
	rofi
    xorg.xbacklight
    lm_sensors
    jq
    maim
    i3lock
  ];
    
  #Locale
  i18n = {
    consoleFont = "Lat2-Terminus16";
    consoleKeyMap = "us";
    defaultLocale = "en_US.UTF-8";
  };
    
  i18n.inputMethod = {
    enabled = "uim";
  };
  
  #timezone
  time.timeZone = "Asia/Seoul";
    
  #audio
  sound.enable = true;
  hardware.pulseaudio.enable = true;
    
  services.xserver.enable = true;
  services.xserver.desktopManager.windowManager.awesome = {
    enable = true;
  }
    
  #TODO add chromeos driver
  services.xserver.libinput.enable = true;
    
  users.users.calvin = { #choose a username
    isNormalUser = true;
    home = "/home/calvin";
    extraGroups = [ "wheel, networkmanager" ];
  };
  system.stateVersion = "19.03";
