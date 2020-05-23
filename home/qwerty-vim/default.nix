{ pkgs }:

let
my_plugins = import ./plugins.nix { inherit (pkgs) vimUtils fetchFromGitHub; };

in with pkgs; neovim.override {
  vimAlias = true;
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
      set signcolumn=yes
      set hidden
      set textwidth=100
      set diffopt+=vertical
      set shell=bash

      set termguicolors
      set background=dark
      colorscheme molokai
      let g:airline_theme = 'molokai'

      " deoplete
      let g:deoplete#enable_at_startup = 1
      let g:deoplete#auto_complete = 0
      let g:deoplete#manual_complete = 1

      " Error and warning signs.
      let g:ale_sign_error = '⤫'
      let g:ale_sign_warning = '�'

      let g:ale_linters = {
      \   'go': ['gofmt', 'golangserver', 'gopls', 'staticcheck'],
      \}

      let g:ale_fixers = {
      \   '*': ['remove_trailing_lines'],
      \   'javascript': ['eslint'],
      \   'go': ['gofmt', 'golangserver', 'gopls', 'staticcheck'],
      \}

      " Enable integration with airline.
      let g:airline#extensions#ale#enabled = 1

      " Enable airline-tabline and some settings
      let g:airline#extensions#tabline#enabled = 1
      let g:airline#extensions#tabline#fnamemod = ':t'
      let g:airline#extensions#tabline#formatter = 'default'

      let g:rooter_patterns = ['learn.json', 'package.json', '.git', '.git/', '_darcs/', '.hg/', '.bzr/', '.svn/']

      let g:go_highlight_build_constraints = 1
      let g:go_highlight_extra_types = 1
      let g:go_highlight_fields = 1
      let g:go_highlight_functions = 1
      let g:go_highlight_methods = 1
      let g:go_highlight_operators = 1
      let g:go_highlight_structs = 1
      let g:go_highlight_types = 1

      let g:go_fmt_command = "goimports"
      let g:go_auto_type_info = 1
      let g:ale_go_golangci_lint_package = 1

      autocmd FileType go nmap <leader>b  <Plug>(go-build)
      autocmd FileType go nmap <leader>r  <Plug>(go-run)
      autocmd FileType go nmap <leader>t  <Plug>(go-test)
      autocmd FileType go nmap <Leader>c  <Plug>(go-coverage-toggle)
    '';

    vam.knownPlugins = vimPlugins // my_plugins // { "tlib" = vimPlugins.tlib_vim; };
    vam.pluginDictionaries = [
      { names = [
        "ale"
        "any-jump"
        "vim-addon-nix" "tlib"
        "ctrlp"
        "vim-rooter"
        "fzfWrapper"
        "vim-ripgrep"
        "deoplete-nvim"
        "LanguageClient-neovim"
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
        "vim-go"
        "vim-javascript"
        "yats-vim"
        "vim-graphql"
        "vim-vue"
        "elm-vim"
        "vim-pony"
        "nim-vim"
        "vim-elixir"
        "alchemist-vim"
        "vim-ocaml"
        "vim-reason-plus"
        "purescript-vim"
        "haskell-vim"
        "dhall-vim"
        "vim-flow"
        "vim-pug"
        "hexmode"
      ]; }
    ];
  };
}
