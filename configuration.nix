{ config, pkgs, lib, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
    ./hardware-configuration.nix
    ];
    
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxPackages_latest;
  
  swapDevices = [ { device = "/dev/sda2";} ];

  networking.hostName = "bitcoin";
  networking.networkmanager.enable = true;

  # Configure the Nix package manager
  nixpkgs = {
    config.allowUnfree = true;
<<<<<<< HEAD
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
=======
    #config.packageOverrides = pkgs:
  }; 
>>>>>>> b84b228162e81526f91a2941871459a85350d4a8

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
<<<<<<< HEAD
=======
    neovim
>>>>>>> b84b228162e81526f91a2941871459a85350d4a8
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

<<<<<<< HEAD
  environment.etc."inputrc".source = lib.mkForce ./custominputrc;

  environment.variables = {
    MESA_LOADER_DRIVER_OVERRIDE = "iris";
  };
  hardware.opengl.package = (pkgs.mesa.override {
    galliumDrivers = [ "nouveau" "virgl" "swrast" "iris" ];
  }).drivers;

=======
>>>>>>> b84b228162e81526f91a2941871459a85350d4a8
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
    #videoDrivers = [ "intel" ];
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
    #vi = "nvim";
    #vim = "nvim";
    googlePing = "ping 8.8.8.8";
    claer = "clear";
    clera = "clear";
    caler = "clear";
    lcear = "clear";
    lcaer = "clear";
    celar = "clear";
    go = "steam-run $HOME/goroot/bin/go";
    cp = "cp -i";
    df = "df -h";
  };
<<<<<<< HEAD

  programs.vim.defaultEditor = true;
=======
>>>>>>> b84b228162e81526f91a2941871459a85350d4a8
 
  system.stateVersion = "19.09";

}
