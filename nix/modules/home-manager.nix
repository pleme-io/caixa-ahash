# nix/modules/home-manager.nix — auto-generated from ahash.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.ahash; in {
  options.programs.ahash = {
    enable = lib.mkEnableOption "ahash";
    package = lib.mkOption { type = lib.types.package; default = pkgs.ahash or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
