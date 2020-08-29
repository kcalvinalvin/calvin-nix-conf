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

  # bandwidth modifications to use more ram but be faster
  boot.kernel.sysctl = {
    "net.core.rmem_max" = 16777216;
    "net.core.wmem_max" = 16777216;
    "net.core.rmem_default" = 87380;
    "net.core.wmem_default" = 87380;
    "net.ipv4.tcp_rmem" = "4096 87380 8388608";
    "net.ipv4.tcp_wmem" = "4096 65536 8388608";
    "net.ipv4.tcp_mem" = "8388608 8388608 8388608";
    "net.ipv4.route.flush" = 1;
  };

  hardware.cpu.intel.updateMicrocode = true;
  hardware.enableAllFirmware = true;

  hardware.opengl.package = (pkgs.mesa.override {
    galliumDrivers = [ "nouveau" "virgl" "swrast" "iris" ];
  }).drivers;

  networking.hostName = "bitcoin";
  networking.networkmanager.enable = true;

  # Remote stuff
  services.openssh = {
    enable = true;
    forwardX11 = true;
    permitRootLogin = "no";
    passwordAuthentication = false;
    gatewayPorts = "yes";
    extraConfig = ''
    usePAM yes
    GSSAPIAuthentication no
  '';
  };
  # dynamic dns
  services.ddclient = {
    enable = true;
    configFile = "/home/calvin/ddclient/ddclient.conf";
  };
  # xrdp config
  services.xrdp = {
    enable = true;
    defaultWindowManager = "${pkgs.icewm}/bin/icewm";
  };
  networking.firewall.allowedTCPPorts = [ 3389 ];
  #services.wakeonlan.interfaces = {
  #  interface = "enp0s20u2";
  #  method = "magicpacket";
  #};

  programs.mosh.enable = true;
  programs.bcc.enable = true;

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

  # FIXME uncomment to use as a normal laptop
  # blueman that doesn't take up 20% of cpu
  #services.blueman.enable = true;

  services.xserver = {
    enable = true;
    # FIXME comment out these two options to use as a normal laptop
    layout = "us";
    xkbOptions = "eurosign:e";
    # FIXME uncomment to use as a normal laptop
    #libinput.enable = false; # Need this as kde for nix enables by default
    videoDrivers = [ "modesetting" ]; # intel is depreciated
    xkbModel = "chromebook";
    #windowManager.i3.enable = true;
    #dpi = 182; #might be problematic for an external monitor
    desktopManager.plasma5.enable = true;
    #cmt.enable = true; # Chrome touchpad drivers
    #cmt.models = "samus"; # Chromebook model
  };
  services.logind.extraConfig = ''
    # don’t shutdown when power button is short-pressed
    HandlePowerKey = ignore;
  '';

  # FIXME uncomment to use as a normal laptop
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
      intel-ocl
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
    #xinput_calibrator
    #openssl
    python3
    python37Packages.pip
    #yakuake
    #uim
    lm_sensors
  ];

  environment.etc."bashrc".text = lib.mkAfter ''eval "$(direnv hook bash)"'';
  environment.variables = {
    MESA_LOADER_DRIVER_OVERRIDE = "iris";
  };

  #Locale
  console.font = "Lat2-Terminus16";
  console.keyMap = "us";

  # FIXME uncomment to use as a normal laptop
  #i18n = {
  #  defaultLocale = "en_US.UTF-8";
  #  inputMethod.enabled = "uim"; # uim for Korean input
  #};

  #timezone
  time.timeZone = "Asia/Seoul";

  # FIXME uncomment to use as a normal laptop
  # audio/bluetooth
  #sound.enable = true;
  #hardware.bluetooth.enable = true;
  #hardware.pulseaudio = {
  #  enable = true;
  #  package = pkgs.pulseaudioFull;
  #};

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

  nix.trustedUsers = [ "root" "calvin" ];

  programs.vim.defaultEditor = true;

  system.stateVersion = "20.03";

}
