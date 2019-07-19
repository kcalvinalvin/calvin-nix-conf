{ config, pkgs, ... }:

let nix-bitcoin = import (pkgs.fetchFromGitHub {
      owner = "fort-nix";
      repo  = "nix-bitcoin";
      rev   = "030c50f36448160afa2700f2260a9254cd4fd734";
      sha256 = "0qds3hw88nq0qka3nx8q9p39ibw6jq1n8z5fv7gik3zksgdbhpzf";
    }) { inherit pkgs; };
in

{
  imports =
    [ # Include the results of the hardware scan.
    ./hardware-configuration.nix
    ./modules
    ];
    
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  
  swapDevices = [ { device = "/dev/sda1";} ];

  networking.hostName = "bitcoin";
  networking.networkmanager.enable = true;

  # Configure the Nix package manager
  nixpkgs = {
    config.allowUnfree = true;
    config.packageOverrides = super: {
      libgestures = import ./pkgs/libgestures;
      libevdevc = import ./pkgs/libevdevc;
      xf86-input-cmnt = import ./pkgs/xf86-input-cmt;
      chromium-xorg-conf = import ./pkgs/chromium-xorg-conf;
      hcxtools = import ./pkgs/hcxtools;
      hcxdumptool = import ./pkgs/hcxdumptool;
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
    usbutils
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
    altcoins.bitcoin
    makeWrapper
    dotnetPackages.Nuget
    openssl
    hashcat
    qbittorrent
    libpcap
    python3
    python37Packages.pip
    unetbootin

    #custom bitcoin related packages

    #custom pkgs for pentesting
    hcxtools
    hcxdumptool
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
  hardware.pulseaudio.package = pkgs.pulseaudioFull;
 
  #Custom touchpad driver for Chromebook Samus
  hardware.samus.cmt.enable = true;
  
  services.xserver = {
    enable = true;
    xkbModel = "chromebook";
    dpi = 182;
    desktopManager.xfce.enable = true;
  };

  users.users.calvin = { #choose a username
    isNormalUser = true;
    home = "/home/calvin";
    
    extraGroups = [ "wheel" "networkmanager" "audio" "input" ];
  };

  programs.bash.shellAliases = {
    l = "ls";
    la = "ls -a";
    vi = "vim";
    googlePing = "ping 8.8.8.8";
    claer = "clear";
    clera = "clear";
    caler = "clear";
  };
 
  #environment.etc = {
  #  "vim".source = ./vim;
  #  "vimrc".source = ./vimrc;
  #  "bashrc".source = ./bashrc;
  #};

  system.stateVersion = "19.03";

}
