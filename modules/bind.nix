{ pkgs, lib, config, dns, ... }:

{
  options = {
    services.bind = {
      enableGistreFr = pkgs.lib.mkEnableOption "Enable support for gistre.fr zone";
    };
  };

  config = lib.mkIf config.services.bind.enableGistreFr
    ({
      services.bind = {
        enable = true;
        zones."gistre.fr" = {
          file = pkgs.writeTextFile {
            name = "gistre.fr.zone";
            text = dns.lib.toString "gistre.fr" (import ../gistre.fr.db.nix { inherit dns; });
          };
        };
      };
    });
}
