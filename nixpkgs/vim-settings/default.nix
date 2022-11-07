{ pkgs, config, ... }:

let
  # Define some plugins that aren't there in the nixpkgs repo.
  any-jump = pkgs.vimUtils.buildVimPlugin {
    name = "any-jump";
    src = pkgs.fetchFromGitHub {
      owner = "pechorin";
      repo = "any-jump.vim";
      rev = "67b17372342826355c015427a5cdbda7c5d3e3b9";
      sha256 = "1i444f03129x2xqp8pkmmbcrh3ja84gx5iwkflcmhba1rdcyx3xq";
    };
  };

  hexmode = pkgs.vimUtils.buildVimPlugin {
    name = "hexmode";
    src = pkgs.fetchFromGitHub {
      owner = "fidian";
      repo = "hexmode";
      rev = "72190318f03a999de357984df72714114e52f6af";
      sha256 = "0wf0l47amkkmp6fnyzxyyg6ll873nmrkj19kd9kf1ib62chcrwzn";
    };
    dependencies = [];
  };

  cmp_nvim_lsp = pkgs.vimUtils.buildVimPlugin {
    name = "cmp_nvim_lsp";
    src = pkgs.fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp_nvim_lsp";
      rev = "ebdfc204afb87f15ce3d3d3f5df0b8181443b5ba";
      sha256 = "0kmaxxdxlp1s5w36khnw0sdrbv1lr3p5n9r90h6h7wv842n4mnca";
    };
    dependencies = [];
  };
in

{
  enable = true;
  plugins = with pkgs.vimPlugins; [
      # LSP
      nvim-lspconfig

      # completion
      nvim-cmp
      cmp-vsnip
      cmp_nvim_lsp
      vim-vsnip
      luasnip
      vim-sensible
      jedi-vim
      pkgs.python39Packages.python-lsp-server

      # Languages
      # NOTE these can also be added in your shell.nix or flake.nix for a
      # per-project setup.
      vim-nix
      vim-go

      # Definition finder
      any-jump

      # Make vim pretty
      vim-airline
      vim-airline-themes
      molokai

      # trailing whitespace helper
      vim-better-whitespace

      # git helpers
      fugitive
      gitgutter

      # debugger
      vimspector

      # hex editor mode
      hexmode

      # language test helper
      vim-test

      # Automatic shiftwidth/expandtab adjuster
      sleuth

      # A root setter.  Useful when you're opening a subdirectory of a project.
      vim-rooter
  ];
  extraConfig = ''
    luafile /Users/calvin/calvin-nix-conf/nixpkgs/vim-settings/lua/settings.lua
  '';
}
