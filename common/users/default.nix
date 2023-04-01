{ config, lib, pkgs, ...}:

{
  users.users.joe = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
    ];

    openssh.authorized_keys.keys = [
      "ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBITHepHZ3BAsaxnswcOPwJWBMgFjQ8O4+U6RJeWS9StUA1fKt6uXNoscs7fyR48YD5gpM8dFdpr7+CpKNfBtjW8="
    ];
  };
}