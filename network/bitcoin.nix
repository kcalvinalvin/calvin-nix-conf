{ config, pkgs, ... }:
{
  networking.firewall = {
    #allowedTCPPorts = [ 8333 18333 ];
    #allowedUDPPorts = [ 18333 ];
  };
}
