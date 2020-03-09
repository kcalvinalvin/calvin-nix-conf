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
    grub.useOSProber = true;
  };
  boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.extraModprobeConfig = ''
    options snd_soc_sst_bdw_rt5677_mach index=0
    options snd-hda-intel index=1
  '';
  boot.initrd.kernelModules = [
    "intel_agp"
    "i915"
  ];
  
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
    qbittorrent
    python3
    python37Packages.pip
    yakuake
    uim
    lm_sensors
    go
  ];

  environment.etc."inputrc".source = lib.mkForce ./custominputrc;
  environment.variables = { GOROOT = [ "${pkgs.go.out}/share/go" ]; };                                                                                                 
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
  hardware.cpu.intel.updateMicrocode = true;
  hardware.enableAllFirmware = true;
  hardware.bluetooth.enable = true;
 
  services.xserver = {
    enable = true;
    libinput.enable = false;
    videoDrivers = [ "intel" ];
    xkbModel = "chromebook";
    dpi = 182; #might be problematic for an external monitor
    desktopManager.plasma5.enable = true;
    cmt.enable = true;
    cmt.models = "samus";
  };
  # blueman that doesn't take up 20% of cpu
  services.blueman.enable = true;
  services.openssh.enable = true;
  services.openssh.extraConfig = ''
    usePAM yes
    Port 22
    PasswordAuthentication no
    GSSAPIAuthentication no
  '';

  services.xserver.displayManager.lightdm = {
    enable = true;
    autoLogin.enable = true;
    autoLogin.user = "calvin";
  };
  services.ddclient = {
    enable = true;
    configFile = "/home/calvin/ddclient/ddclient.conf";
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
    celar = "clear";
    clare = "clear";
    cp = "cp -i";
    df = "df -h";
    monitoroff = "sleep 1; xset dpms force off";
  };

  programs.vim.defaultEditor = true;
  programs.mosh.enable = true;
 
  system.stateVersion = "19.09";

}
