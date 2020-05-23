{ config, pkgs, lib, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
    ./hardware-configuration.nix
    ./wireguard.nix
    ];
    
  # Boot confs
  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
    grub.enable = true;
    grub.device = "nodev"; # allow UEFI grub
    #grub.useOSProber = true; # search for other oses
  };
  boot.kernelPackages = pkgs.linuxPackages_latest;

  hardware.cpu.intel.updateMicrocode = true;
  hardware.enableAllFirmware = true;

  hardware.opengl.package = (pkgs.mesa.override {
    galliumDrivers = [ "nouveau" "virgl" "swrast" "iris" ];
  }).drivers;

  networking.hostName = "bitcoin";
  networking.networkmanager.enable = true;

  # Remote stuff
  services.openssh.enable = true;
  services.openssh.extraConfig = ''
    usePAM yes
    Port 22
    PasswordAuthentication no
    GSSAPIAuthentication no
  '';

  programs.mosh.enable = true;
  # could be per user but eh
  programs.fish = {
    enable = true;
    shellAliases = {
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
      tmux = "direnv exec / tmux";
    };
  };

  # dynamic dns
  services.ddclient = {
    enable = true;
    configFile = "/home/calvin/ddclient/ddclient.conf";
  };

  # Some audio driver confs. Didn't have success
  boot.extraModprobeConfig = ''
    options snd_soc_sst_bdw_rt5677_mach index=0
    options snd-hda-intel index=1
  '';
  boot.initrd.kernelModules = [
    "intel_agp"
    "i915"
  ];

  # init swap
  swapDevices = [ { device = "/dev/sda2";} ];

  # blueman that doesn't take up 20% of cpu
  services.blueman.enable = true;

  services.xserver = {
    enable = true;
    libinput.enable = false; # Need this as kde for nix enables by default
    videoDrivers = [ "modesetting" ]; # intel is depreciated
    xkbModel = "chromebook";
    dpi = 182; #might be problematic for an external monitor
    desktopManager.plasma5.enable = true;
    cmt.enable = true; # Chrome touchpad drivers
    cmt.models = "samus"; # Chromebook model
  };

  services.xserver.displayManager.lightdm = {
    enable = true;
    autoLogin.enable = true;
    autoLogin.user = "calvin";
  };

  # Configure the Nix package manager
  nixpkgs = {
    config.allowUnfree = true;
    config.packageOverrides = pkgs: {
      vaapiIntel = pkgs.vaapiIntel.override { enableHybridCodec = true; };
    };
  };
  # enable opengl
  hardware.opengl = {
    enable = true;
    extraPackages = with pkgs; [
      vaapiIntel
      vaapiVdpau
      libvdpau-va-gl
      intel-media-driver
    ];
  };

  # Some default software to install
  # This applies to all users on the system
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
    python3
    python37Packages.pip
    yakuake
    uim
    lm_sensors
  ];

  environment.etc."bashrc".text = lib.mkAfter ''eval "$(direnv hook bash)"'';
  environment.variables = {
    MESA_LOADER_DRIVER_OVERRIDE = "iris";
  };

  #Locale
  i18n = {
    consoleFont = "Lat2-Terminus16";
    consoleKeyMap = "us";
    defaultLocale = "en_US.UTF-8";
    inputMethod.enabled = "uim"; # uim for Korean input
  };
    
  #timezone
  time.timeZone = "Asia/Seoul";
    
  # audio/bluetooth
  sound.enable = true;
  hardware.bluetooth.enable = true;
  hardware.pulseaudio = {
    enable = true;
    package = pkgs.pulseaudioFull;
  };

  users.users.calvin = { #choose a username
    isNormalUser = true;
    home = "/home/calvin";
    shell = pkgs.fish;
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
 
  system.stateVersion = "20.03";

}
