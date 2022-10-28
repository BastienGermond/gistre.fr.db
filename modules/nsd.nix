{ pkgs, lib, config, dns, ... }:

{
  options = {
    services.nsd = {
      enableGistreFr = pkgs.lib.mkEnableOption "Enable support for gistre.fr zone";
    };
  };

  config = lib.mkIf config.services.nsd.enableGistreFr
    ({
      services.nsd = {
        enable = true;
        zones."gistre.fr".data = dns.lib.toString "gistre.fr" (import ../gistre.fr.db.nix { inherit dns; });
      };
    });
}
