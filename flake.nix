{
  description = "DNS zone for gistre.fr.";

  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
    dns.url = "github:kirelagin/dns.nix";
  };

  outputs = { self, nixpkgs, flake-utils, dns }:
    flake-utils.lib.eachDefaultSystem
      (system:
        let
          pkgs = import nixpkgs { inherit system; };
        in
        {
          formatter = pkgs.nixpkgs-fmt;
        }) // {
      nixosModules.gistre-fr-db = import ./modules;
      nixosModules.default = self.nixosModules.gistre-fr-db;
    };
}
