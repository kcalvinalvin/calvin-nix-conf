{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
    ./hardware-configuration.nix
    ./modules
    ];
    
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  
  boot.extraModprobeConfig = ''
    options snd_soc_sst_bdw_rt5677_mach index=0
    options snd-hda-intel index=1
  '';

  networking.hostName = "bitcoin";
  networking.networkmanager.enable = true;

  # Configure the Nix package manager
  nixpkgs = {
    config.allowUnfree = true;
    config.packageOverrides =  {
      libgestures = import ./pkgs/libgestures;
      libevdevc = import ./pkgs/libevdevc;
      xf86-input-cmnt = import ./pkgs/xf86-input-cmt;
      chromium-xorg-conf = import ./pkgs/chromium-xorg-conf;
      btcpayserver = import ./pkgs/btcpayserver;
    };
  };

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
    networkmanager
    gnupg
    lsof
    lxqt.pavucontrol-qt
    jsoncpp # dependency for libgestures
    nix-prefetch
    nix-prefetch-git
    nix-prefetch-github
    xorg.xbacklight
    xinput_calibrator
    xdotool #dependency for libinput-gestures
    wmctrl #dependency for libinput-gestures
    dotnet-sdk
    libinput-gestures

    #custom packages for the touchpad/touchscreen
    libgestures #dependency for xf86-input-cmt
    libevdevc  #dependency for xf86-input-cmt
    xf86-input-cmt #chromebook touchpad driver

    #custom bitcoin related packages
    btcpayserver
  ];

  #Locale
  i18n = {
    consoleFont = "Lat2-Terminus16";
    consoleKeyMap = "us";
    defaultLocale = "en_US.UTF-8";
    inputMethod.enabled = "uim";
  };
    
  #timezone
  time.timeZone = "Asia/Seoul";
    
  sound.enable = true;
  hardware.pulseaudio.enable = true;
  hardware.bluetooth.enable = true;
  hardware.backlight.enable = true;
  hardware.enableAllFirmware = true;
  hardware.pulseaudio.package = pkgs.pulseaudioFull;
 
  #Custom touchpad driver for Chromebook Samus
  hardware.samus.cmt.enable = true;
  
  services.xserver = {
    enable = true;
    xkbModel = "chromebook";
    dpi = 150;
    desktopManager.xfce.enable = true;
  };

  users.users.calvin = { #choose a username
    isNormalUser = true;
    home = "/home/calvin";
    extraGroups = [ "wheel" "networkmanager" "audio" "input" ];
  };
  system.stateVersion = "19.03";

}
