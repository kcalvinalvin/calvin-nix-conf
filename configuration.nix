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
    grub.device = "/dev/sda";
    grub.useOSProber = true;
  };
  boot.kernelPackages = pkgs.linuxPackages_latest;
  
  swapDevices = [ { device = "/dev/sda2";} ];

  networking.hostName = "bitcoin";
  networking.networkmanager.enable = true;

  # Configure the Nix package manager
  nixpkgs = {
    config.allowUnfree = true;
    config.packageOverrides = pkgs: {
      vaapiIntel = pkgs.vaapiIntel.override { enableHybridCodec = true; };
    };
  };
  hardware.opengl = {
    enable = true;
    extraPackages = with pkgs; [
      vaapiIntel
      vaapiVdpau
      libvdpau-va-gl
      intel-media-driver
    ];
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
    vim
    vlc
    gnumake
    hexchat
    unzip
    bitcoind
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

  environment.etc."inputrc".source = lib.mkForce ./custominputrc;

  environment.variables = {
    MESA_LOADER_DRIVER_OVERRIDE = "iris";
  };
  hardware.opengl.package = (pkgs.mesa.override {
    galliumDrivers = [ "nouveau" "virgl" "swrast" "iris" ];
  }).drivers;

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
  hardware.pulseaudio.package = pkgs.pulseaudioFull;
 
  services.xserver = {
    enable = true;
    libinput.enable = false;
    videoDrivers = [ "intel" ];
    xkbModel = "chromebook";
    dpi = 182;
    desktopManager.plasma5.enable = true;
    cmt.enable = true;
    cmt.models = "samus";
  };
  # blueman that doesn't take up 20% of cpu
  services.blueman.enable = true;

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
