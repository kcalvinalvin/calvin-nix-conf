# .nixpkgs aka dotfiles with nix

## Fully declarative user environment

Just neovim and tmux at the moment. No hassle reproducible configs for those two.

## Dependencies

1. [nix](https://nixos.org/nix/)
2. [home-manager](https://github.com/rycee/home-manager)

## Usage

1. Git clone this repo to local machine
2. Soft link 'calvin-nix-conf/nixpkgs/' to '~/.nixpkgs/' with 'ln -s calvin-nix-conf/nixpkgs/ ~/.config/'. You can just copy 'calvin-nix-conf/nixpkgs/ to ~/.config/ too.
2. Run 'home-manager build' to build and 'home-manager switch' to switch to the new environment.

## Should fix when I get the time

1. Per-project nvim configs
