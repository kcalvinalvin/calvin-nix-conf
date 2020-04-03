{ config, ... }:

{
  # enable NAT
  networking.nat.enable = true;
  networking.nat.externalInterface = "eth0";
  networking.nat.internalInterfaces = [ "wg0" ];
  networking.firewall = {
    allowedUDPPorts = [ 51820 ];

   # This allows the wireguard server to route your traffic to the internet and hence be like a VPN
   # For this to work you have to set the dnsserver IP of your router (or dnsserver of choice) in your clients
   extraCommands = ''
    iptables -A FORWARD -i wg0 -j ACCEPT
    iptables -A FORWARD -o wg0 -j ACCEPT
    iptables -t nat -A POSTROUTING -o enp0s20u2 -j MASQUERADE
    '';
  };

  networking.wireguard.interfaces = {
    # "wg0" is the network interface name. You can name the interface arbitrarily.
    wg0 = {
      # Determines the IP address and subnet of the server's end of the tunnel interface.
      ips = [ "10.0.0.1/24" "fd86:ea04:1115::1/64" ];

      # The port that Wireguard listens to. Must be accessible by the client.
      listenPort = 51820;

      # Path to the private key file.
      #
      # Note: The private key can also be included inline via the privateKey option,
      # but this makes the private key world-readable; thus, using privateKeyFile is
      # recommended.
      privateKeyFile = "/home/calvin/keys/wg-privkey";

      peers = [
        # List of allowed peers.
        {
          # Public key of the peer (not a file path).
          publicKey = "T7/buIQqnibtbjeEdGkwrRtae2CxjmcPe8MI+45NYkQ=";
          # List of IPs assigned to this peer within the tunnel subnet. Used to configure routing.
          allowedIPs = [ "10.0.0.2" "fd86:ea04:1115::2/64" ];
        }
        #{ # John Doe
        #  publicKey = "{john doe's public key}";
        #  allowedIPs = [ "10.100.0.3/32" ];
        #}
      ];
    };
  };
}
