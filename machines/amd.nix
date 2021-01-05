# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, lib, ... }:

{
  # needed for nvidia. Ugh
  nixpkgs.config.allowUnfree = true;

  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./wireguard.nix
      ./nginx.nix
      ./ddclient.nix
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

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

  networking = {
    hostName = "bitcoin";
    useDHCP = false;
    interfaces.enp34s0.useDHCP = true;

    #nameservers = [ "127.0.0.1" "::1" ];
    resolvconf.enable = pkgs.lib.mkForce false;
    #dhcpcd.extraConfig = "nohook resolv.conf";
    networkmanager.dns = false;
  };

  services.resolved.enable = false;

  services.dnscrypt-proxy2 = {
    enable = true;
    settings = {
      ipv6_servers = true;
      require_dnssec = true;
      listen_addresses = [ "[::1]:51" ];

      sources.public-resolvers = {
        urls = [
          "https://raw.githubusercontent.com/DNSCrypt/dnscrypt-resolvers/master/v3/public-resolvers.md"
          "https://download.dnscrypt.info/resolvers-list/v3/public-resolvers.md"
        ];
        cache_file = "/var/lib/dnscrypt-proxy2/public-resolvers.md";
        minisign_key = "RWQf6LRCGA9i53mlYecO4IzT51TGPpvWucNSCh1CBM0QTaLn73Y7GFO3";
      };

      # You can choose a specific set of servers from https://github.com/DNSCrypt/dnscrypt-resolvers/blob/master/v3/public-resolvers.md
      #server_names = [ "cloudflare" ];
    };
  };

  services.dnsmasq = {
    enable = true;
    extraConfig = ''
      interface=wg0
    '';
  };

  environment.etc."resolv.conf".text = "::1";

  systemd.services.dnscrypt-proxy2.serviceConfig = {
    StateDirectory = "dnscrypt-proxy";
  };

  # Forward loopback traffic on port 53 to dnscrypt-proxy2.
  networking.firewall.extraCommands = ''
    ip6tables --table nat --flush OUTPUT
    ${lib.flip (lib.concatMapStringsSep "\n") [ "udp" "tcp" ] (proto: ''
      ip6tables --table nat --append OUTPUT \
        --protocol ${proto} --destination ::1 --destination-port 53 \
        --jump REDIRECT --to-ports 51
    '')}
  '';

  # The global useDHCP flag is deprecated, therefore explicitly set to false here.
  # Per-interface useDHCP will be mandatory in the future, so this generated config
  # replicates the default behaviour.
  #networking.useDHCP = false;
  #networking.interfaces.enp34s0.useDHCP = true;

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    font = "Lat2-Terminus16";
    keyMap = "us";
  };

  # Set your time zone.
  time.timeZone = "Asia/Seoul";

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  # environment.systemPackages = with pkgs; [
  #   wget vim
  # ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  #   pinentryFlavor = "gnome3";
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
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

  programs.mosh.enable = true;
  programs.bcc.enable = true;

  # Enable CUPS to print documents.
  # services.printing.enable = true;

  # Enable sound.
  # sound.enable = true;
  # hardware.pulseaudio.enable = true;

  # Enable the X11 windowing system.
  # services.xserver.enable = true;
  # services.xserver.layout = "us";
  # services.xserver.xkbOptions = "eurosign:e";

  services.xserver.videoDrivers = [ "nvidia" ];

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

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.calvin = {
    isNormalUser = true;
    shell = pkgs.fish;
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
  };

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "20.03"; # Did you read the comment?

}
