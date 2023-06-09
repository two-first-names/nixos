{ config, lib, pkgs, ...}:

{
  imports = [
    ./users
  ];

  system.autoUpgrade = {
    enable = true;
    flake = "github:two-first-names/nixos#${networking.hostName}";
  };

  networking.domain = "engiqueer.net";

  security.sudo.wheelRequiresPassword = false;
}