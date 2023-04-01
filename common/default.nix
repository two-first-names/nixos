{ config, lib, pkgs, ...}:

{
  system.autoUpgrade = {
    enable = true;
    flake = "github:two-first-names/nixos#${networking.hostname}";
  };

  networking.domain = "engiqueer.net";
}