self: super: {
  libevdevc = super.callPackage ./libevdevc {};

  libgestures = super.callPackage ./libgestures {};

  xf86-input-cmt = super.callPackage ./xf86-input-cmt {};

  chromium-xorg-conf = super.callPackage ./chromium-xorg-conf {};
  
  home-manager = super.callPackage ./home-manager {};

  btcpayserver = super.callPackage ./btcpayserver {};

  NBXplorer = super.callPackage ./NBXplorer {};
}
