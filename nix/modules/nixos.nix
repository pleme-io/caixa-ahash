# nix/modules/nixos.nix — auto-generated from ahash.caixa.lisp
# description: "A non-cryptographic hash function using AES-NI for high performance"
{ config, lib, pkgs, ... }:
let
  cfg = config.services.ahash;
in {
  options.services.ahash = {
    enable = lib.mkEnableOption "ahash";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.ahash or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
