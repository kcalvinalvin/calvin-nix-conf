{
  allowUnfree = true;

  packageOverrides = pkgs_: with pkgs_; {

    #bash-config = import ./bash-config {
    #  inherit (pkgs) stdenv fzf;
    #};
    my_vim = import ./vim-config { inherit pkgs ; };

    all = with pkgs; buildEnv {
      name = "all";

      #paths = [
      #  bash-config
      #];
    };
  };
}
