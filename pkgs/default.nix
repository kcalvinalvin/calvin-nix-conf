self: super: {
  libevdevc = super.callPackage ./libevdevc.nix {};

  libgestures = super.callPackage ./libgestures {};

  xf86-input-cmt = super.callPackage ./xf86-input-cmt.nix {};

  chromium-xorg-conf = super.callPackage ./chromium-xorg-conf.nix {};
}
