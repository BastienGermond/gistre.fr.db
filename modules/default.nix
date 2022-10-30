{ pkgs, config, dns, ... }:

{
  imports = [
    ./nsd.nix
    ./bind.nix
  ];
}
