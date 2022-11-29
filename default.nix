{ config, pkgs, lib, ... }:

let
  ham-fonts = import ./haam-fonts/default.nix { inherit lib ; fetchzip = pkgs.fetchzip;  };
in {
  fonts = {
    fontconfig.enable = true;
    fontDir.enable = true;
    enableGhostscriptFonts = true;
    fonts = with pkgs; [ ham-fonts ];
  };
}