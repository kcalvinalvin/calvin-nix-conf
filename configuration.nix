{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
    ./hardware-configuration.nix
    ];
    
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  
  swapDevices = [ { device = "/dev/sda2";} ];

  hardware.opengl.enable = true;

  networking.hostName = "bitcoin";
  networking.networkmanager.enable = true;

  # Configure the Nix package manager
  nixpkgs = {
    config.allowUnfree = true;
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
    hexchat
    unzip
    exfat
    gptfdisk
    blueman
    networkmanager
    gnupg
    lsof
    lshw
    usbutils
    nix-prefetch
    nix-prefetch-git
    nix-prefetch-github
    xinput_calibrator
    openssl
    hashcat
    qbittorrent
    python3
    python37Packages.pip
    bettercap
    obs-studio
    pinta
    yakuake
    uim
    lm_sensors
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
  hardware.pulseaudio.package = pkgs.pulseaudioFull;
 
  services.xserver = {
    enable = true;
    libinput.enable = false;
    xkbModel = "chromebook";
    dpi = 182;
    desktopManager.plasma5.enable = true;
    cmt.enable = true;
    cmt.models = "samus";
  };

  users.users.calvin = { #choose a username
    isNormalUser = true;
    home = "/home/calvin";
    
    extraGroups = [ "wheel" "networkmanager" "audio" "input" ];
  };

  programs.bash.shellAliases = {
    l = "ls";
    la = "ls -a";
    vi = "nvim";
    vim = "nvim";
    googlePing = "ping 8.8.8.8";
    claer = "clear";
    clera = "clear";
    caler = "clear";
    lcear = "clear";
    lcaer = "clear";
  };
 
  system.stateVersion = "19.09";

}
