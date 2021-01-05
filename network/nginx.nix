{ config, pkgs, ... }:

{
  # open 443 for https
  networking.firewall = {
    allowedTCPPorts = [ 80 443 ];
    allowedUDPPorts = [ 80 443 ];
  };

  # actual ngnix
  services.nginx = {
    enable = true;

    recommendedTlsSettings = true;
    recommendedOptimisation = true;
    recommendedGzipSettings = true;
    recommendedProxySettings = true;

    virtualHosts = {
      "domain" = {
        forceSSL = true;
        enableACME = true;
        locations."/".proxyPass = "http://localhost:port";
      };
      "domain" = {
        forceSSL = true;
        enableACME = true;
        locations."/".proxyPass = "http://localhost:port";
      };
      "utcd.kcalvinalvin.com" = {
        forceSSL = true;
        enableACME = true;
        locations."/".proxyPass = "http://localhost:port";
      };
      "utcd-csn.kcalvinalvin.com" = {
        forceSSL = true;
        enableACME = true;
        locations."/".proxyPass = "http://localhost:port";
      };
    };
  };

  # let's encrypt stuff
  security.acme.certs = {
    "domain".email = "email";
    "domain".email = "email";
    "domain".email = "email";
    "domain".email = "email";
  };
  security.acme.acceptTerms = true;
}
