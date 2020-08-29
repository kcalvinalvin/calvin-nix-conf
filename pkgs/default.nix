#self: super: {
#  libevdevc = super.callPackage ./libevdevc {};
#
#  libgestures = super.callPackage ./libgestures {};
#
#  xf86-input-cmt = super.callPackage ./xf86-input-cmt {};
#
#  chromium-xorg-conf = super.callPackage ./chromium-xorg-conf {};
#
#  #home-manager = super.callPackage ./home-manager {};
#
#  hcxtools = super.callPackages ./hcxtools {};
#
#  hcxdumptool = super.callPackages ./hcxdumptool {};
#}

let
  pkgs = import <nixpkgs> {};
  mkDerivation = import ./NBXplorer pkgs;
in mkDerivation {
  name = "hello";
}
