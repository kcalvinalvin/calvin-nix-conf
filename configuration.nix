{ config, pkgs, lib, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
    ./hardware-configuration.nix
    ];
    
  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
    grub.enable = true;
    grub.device = "nodev";
    grub.efiSupport = true;
  };
  boot.kernelPackages = pkgs.linuxPackages_latest;
  
  swapDevices = [ { device = "/dev/sda1";} ];

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
    xclip
    python
    gcc
    go
    vim
    vlc
    gnumake
    hexchat
    unzip
    exfat
    gptfdisk
    networkmanager
    gnupg
    lsof
    lshw
    usbutils
    nmon
    nix-prefetch
    nix-prefetch-git
    nix-prefetch-github
    xinput_calibrator
    qbittorrent
    python3
    python37Packages.pip
    bettercap
    yakuake
    uim
    lm_sensors
  ];

  environment.etc."inputrc".source = lib.mkForce ./custominputrc;
  environment.variables = { GOROOT = [ "${pkgs.go.out}/share/go" ]; };

  #Locale
  i18n = {
    #console.font = "Lat2-Terminus16";
    #console.keyMap = "us";
    defaultLocale = "en_US.UTF-8";
    inputMethod.enabled = "uim";
  };

  #timezone
  time.timeZone = "Asia/Seoul";
    
  #doesn't do anything on a macbook
  sound.enable = true;
  hardware.pulseaudio.enable = true;
  hardware.pulseaudio.package = pkgs.pulseaudioFull;
 
  services.xserver = {
    enable = true;
    libinput.enable = true;
    dpi = 182;
    videoDrivers = [ "intel" ];
    desktopManager.plasma5.enable = true;
  };
  # blueman that doesn't take up 20% of cpu
  services.blueman.enable = true;
  services.tlp.enable = true;

  powerManagement.powertop.enable = true;

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
    celar = "clear";
    clare = "clear";
    cp = "cp -i";
    df = "df -h";
  };

  programs.vim.defaultEditor = true;
 
  system.stateVersion = "19.09";

}
