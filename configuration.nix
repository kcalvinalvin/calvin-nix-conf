{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
    ./hardware-configuration.nix
    ./modules
    ];
    
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  
  networking.hostName = "bitcoin";
  networking.networkmanager.enable = true;

 # Configure the Nix package manager
  nixpkgs = {
    config.allowUnfree = true;
    # To use the pinned channel, the original package set is thrown
    # away in the overrides:
    config.packageOverrides = oldPkgs: stable // {
      # Store whole unstable channel in case that other modules need
      # it (see emacs.nix for example):
      inherit unstable;

      # Backport Exa from unstable until a fix for the Rust builder is
      # backported.
      #
      # https://github.com/NixOS/nixpkgs/pull/48020
      exa = unstable.exa;

      libgestures = import ./pkgs/libgestures;
      libevdevc = import ./pkgs/libevdevc;
      xf86-input-cmnt = import ./pkgs/xf86-input-cmt;
      chromium-xorg-conf = import ./pkgs/chromium-xorg-conf;
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
    jsoncpp
    #custom packages
    libgestures
    libevdevc
    xf86-input-cmt
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
  hardware.samus.cmt.enable = true;
  
  services.xserver = {
    enable = true;
    dpi = 192;
    xkbModel = "chromebook";
  };
  services.xserver.desktopManager.xfce = {
    enable = true;
  };
    
  users.users.calvin = { #choose a username
    isNormalUser = true;
    home = "/home/calvin";
    extraGroups = [ "wheel" "networkmanager" ];
  };
  system.stateVersion = "19.03";

}
