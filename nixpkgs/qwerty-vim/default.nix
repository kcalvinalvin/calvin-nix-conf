{ pkgs }:

with pkgs;

let
  my_plugins = import ./plugins.nix { inherit pkgs vimUtils fetchFromGitHub; };
in


neovim.override {
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

      " deoplete
      let g:deoplete#enable_at_startup = 1
      let g:deoplete#auto_complete = 0
      let g:deoplete#manual_complete = 1

      " Error and warning signs.
      "let g:ale_sign_error = '⤫'
      let g:ale_sign_error = '✘'
      let g:ale_sign_warning = '�'

      " rust stuff
      let g:rustfmt_autosave = 1

      let g:ale_linters = {
      \   'go': ['gofmt', 'golangserver', 'gopls', 'govet'],
      \   'rust': ['analyzer', 'rustc', 'cargo'],
      \   'python': ['pyls'],
      \   'cpp': ['g++'],
      \}

      "let g:ale_rust_rls_toolchain = 'stable'
      "let g:ale_rust_rls_executable = '/home/calvin/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/bin/rls'
      "let g:ale_rust_cargo_use_clippy = 1
      let g:rustfmt_autosave = 1
      let g:rust_conceal = 1

      let g:ale_fixers = {
      \   '*': ['remove_trailing_lines', 'trim_whitespace'],
      \   'javascript': ['eslint'],
      \   'go': ['gofmt', 'goimports'],
      \   'rust': ['rustfmt', 'remove_trailing_lines', 'trim_whitespace'],
      \   'nix': ['nixpkgs-fmt', 'remove_trailing_lines', 'trim_whitespace']
      \}
      nmap gd :ALEGoToDefinition<CR>

      " project specific import path
      let g:ale_c_clang_options="-I/home/calvin/bitcoin-projects/cpp/core/bitcoin"
      let g:ale_cpp_clang_options="-L/home/calvin/bitcoin-projects/cpp/core/bitcoin"

      let g:ale_c_build_dir="/home/calvin/bitcoin-projects/cpp/core/bitcoin"
      let g:ale_cpp_cc_options="-fsyntax-only -lpthread -I. -I./src -I./src/leveldb/include -I./leveldb/helpers/memenv -I./secp256k1/include -I./univalue/include -I./db4/include/ -I./src/config -DHAVE_CONFIG_H"

      let g:ale_fix_on_save = 1
      let g:ale_lint_on_text_changed = 'always'
      let g:ale_lint_on_enter = 1
      let g:ale_lint_on_save = 1

      let g:ale_c_parse_makefile = 1

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
        "rust-vim"
        "vim-rooter"
        "vim-racer"
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
