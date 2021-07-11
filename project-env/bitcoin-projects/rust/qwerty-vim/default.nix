{ pkgs }:

with pkgs;

let
  my_plugins = import ./plugins.nix { inherit pkgs vimUtils fetchFromGitHub; };
in


neovim.override {
  vimAlias = false;
  withNodeJs = true;
  configure = {
    customRC = ''
      syntax on
      filetype on
      set path+=**
      set expandtab
      set smarttab
      set autoindent
      set smartindent
      set smartcase
      set modeline
      set nocompatible
      set encoding=utf-8
      set incsearch
      set hlsearch
      set history=700
      set laststatus=2
      "set signcolumn=no
      set signcolumn=yes:1
      set hidden
      set diffopt+=vertical
      set shell=bash
      set exrc
      set secure

      set termguicolors
      set background=dark
      colorscheme molokai
      let g:airline_theme = 'molokai'

      nmap gd <Plug>(coc-definition)
      nmap gy <Plug>(coc-type-definition)
      nmap gi <Plug>(coc-implementation)
      nmap gr <Plug>(coc-references)

      " Enable airline-tabline and some settings
      let g:airline#extensions#tabline#enabled = 1
      let g:airline#extensions#tabline#fnamemod = ':t'
      let g:airline#extensions#tabline#formatter = 'default'

      " Remap keys for applying codeAction to the current buffer.
      nmap <leader>ac  <Plug>(coc-codeaction)
      " Apply AutoFix to problem on the current line.
      nmap <leader>qf  <Plug>(coc-fix-current)

      call coc#config('coc', {
      \ 'preferences': {
      \   'codeLens.enable': "true",
      \   'colorSupport': "true",
      \   'extensionUpdateCheck': "never",
      \   'formatOnSaveFiletypes': [ "go" ],
      \ },
      \ 'suggest': {
      \   'acceptSuggestionOnCommitCharacter': "true",
      \   'enablePreview': "true",
      \   'timeout': 2000,
      \   'triggerAfterInsertEnter': "true",
      \ },
      \})

      call coc#config('rust-client', {
      \ 'disableRustup': "true",
      \})

      call coc#config('languageserver', {
      \ 'bash': {
      \   "command": "${pkgs.nodePackages.bash-language-server}/bin/bash-language-server",
      \   "args": ["start"],
      \   "filetypes": ["sh"],
      \   "rootPatterns": [".vim/", ".git/", ".hg/"],
      \   "ignoredRootPaths": ["~"],
      \ },
      \ 'rls': {
      \     "command": "rls",
      \     "filetypes": ["rust"],
      \     "rootPatterns": ["Cargo.toml"]
      \ },
      \})
    '';

    vam.knownPlugins = vimPlugins // my_plugins // { "tlib" = vimPlugins.tlib_vim; };
    vam.pluginDictionaries = [
      { names = [
        "any-jump"
        "vim-addon-nix" "tlib"
        "ctrlp"
        "vim-rooter"
        "vim-racer"
        "fzfWrapper"
        "vim-ripgrep"
        "editorconfig-vim"
        "vim-autoformat"
        "tcomment_vim"
        "vim-test"
        "molokai"
        "fugitive"
        "gitgutter"
        "vim-airline"
        "vim-airline-themes"
        "sleuth"
        "coc-nvim"
        "coc-rls"
        "coc-json"
        "hexmode"
      ]; }
    ];
  };
}
