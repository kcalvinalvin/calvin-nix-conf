{ pkgs }:
with pkgs;

let
  my_plugins = import ./plugins.nix { inherit pkgs vimUtils fetchFromGitHub; };
in


neovim.override {
  #vimAlias = false;
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
      set incsearch
      set hlsearch
      set history=700
      set laststatus=2
      set diffopt+=vertical
      set shell=bash
      set exrc
      set secure

      set termguicolors
      set background=dark
      colorscheme molokai

      ""
      "" Airline stuff
      ""
      let g:airline_theme = 'molokai'

      " Enable integration with airline.
      let g:airline#extensions#ale#enabled = 1

      " Enable airline-tabline and some settings
      let g:airline#extensions#tabline#enabled = 1
      let g:airline#extensions#tabline#fnamemod = ':t'
      let g:airline#extensions#tabline#formatter = 'default'

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

      autocmd FileType go nmap <leader>b  <Plug>(go-build)
      autocmd FileType go nmap <leader>r  <Plug>(go-run)
      autocmd FileType go nmap <leader>t  <Plug>(go-test)
      autocmd FileType go nmap <Leader>c  <Plug>(go-coverage-toggle)
      autocmd FileType go nmap <Leader>r  <Plug>(go-callers)
      autocmd FileType go nmap <Leader>f  <Plug>(go-fmt)
      autocmd FileType go nmap <Leader>l  <Plug>(go-lint)
      autocmd FileType go nmap <Leader>v  <Plug>(go-vet)

      ""
      "" ale stuff for Go
      ""

      """ Error and warning signs.
      let g:ale_sign_error = '✗'
      let g:ale_sign_warning = '🚩'

      "" Enable integration with airline.
      let g:airline#extensions#ale#enabled = 1

      nmap [g <Plug>(ale_previous_wrap)
      nmap ]g <Plug>(ale_next_wrap)

      let g:go_info_mode = 'guru'

      ""
      "" coc.nvim stuff
      ""

      " Disable vim-go def jump
      let g:go_def_mapping_enabled = 0

      " always show the signcolumn
      autocmd BufRead,BufNewFile * setlocal signcolumn=number
      " remove the color from the signColumn
      "autocmd BufRead,BufNewFile * highlight clear SignColumn

      " Set internal encoding of vim, not needed on neovim, since coc.nvim using some
      " unicode characters in the file autoload/float.vim
      set encoding=utf-8

      " TextEdit might fail if hidden is not set.
      set hidden

      set signcolumn=number
      set number

      " Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
      " delays and poor user experience.
      set updatetime=100

      " Don't pass messages to |ins-completion-menu|.
      set shortmess+=c

      " Some servers have issues with backup files, see #649.
      set nobackup
      set nowritebackup

      "" Always show the signcolumn, otherwise it would shift the text each time
      "" diagnostics appear/become resolved.
      "if has("nvim-0.5.0") || has("patch-8.1.1564")
      "  " Recently vim can merge signcolumn and number column into one
      "  set signcolumn=number
      "else
      "  set signcolumn=yes
      "endif

      " GoTo code navigation.
      nmap gd <Plug>(coc-definition)
      nmap gy <Plug>(coc-type-definition)
      nmap gi <Plug>(coc-implementation)
      nmap gr <Plug>(coc-references)

      function! s:check_back_space() abort
        let col = col('.') - 1
        return !col || getline('.')[col - 1]  =~# '\s'
      endfunction

      " Highlight the symbol and its references when holding the cursor.
      autocmd CursorHold * silent call CocActionAsync('highlight')

      " Remap keys for applying codeAction to the current buffer.
      nmap <leader>ac  <Plug>(coc-codeaction)
      " Apply AutoFix to problem on the current line.
      nmap <leader>qf  <Plug>(coc-fix-current)

      " Use K to show documentation in preview window.
      nnoremap <silent> K :call <SID>show_documentation()<CR>

      " Use `[g` and `]g` to navigate diagnostics
      " Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
      nmap <silent> [g <Plug>(coc-diagnostic-prev)
      nmap <silent> ]g <Plug>(coc-diagnostic-next)

      function! s:show_documentation()
        if (index(['vim','help'], &filetype) >= 0)
          execute 'h '.expand('<cword>')
        elseif (coc#rpc#ready())
          call CocActionAsync('doHover')
        else
          execute '!' . &keywordprg . " " . expand('<cword>')
        endif
      endfunction

      call coc#config('coc', {
      \ 'preferences': {
      \   'colorSupport': "true",
      \   'extensionUpdateCheck': "never",
      \   'formatOnSaveFiletypes': [ "go" ],
      \ },
      \})

      call coc#config('suggest', {
      \ 'acceptSuggestionOnCommitCharacter': "true",
      \ 'enablePreview': "true",
      \ 'timeout': 2000,
      \ 'triggerAfterInsertEnter': "true",
      \})

      call coc#config('diagnostic', {
      \ 'warningSign': "🚩",
      \ 'errorSign': "✗",
      \ 'infoSign': "👀",
      \ 'hintSign': "💡",
      \ 'displayByAle': "true",
      \})

      call coc#config('languageserver', {
      \ 'bash': {
      \   "command": "${pkgs.nodePackages.bash-language-server}/bin/bash-language-server",
      \   "args": ["start"],
      \   "filetypes": ["sh"],
      \   "rootPatterns": [".vim/", ".git/", ".hg/"],
      \   "ignoredRootPaths": ["~"],
      \ },
      '' + pkgs.lib.optionalString pkgs.stdenv.isLinux ''
      "\ 'clangd': {
      "\   "command": "clangd",
      "\   "filetypes": ["c", "cpp", "cuda", "objc", "objcpp"],
      "\   "rootPatterns": ["compile_commands.json", ".vim/", ".git/", ".hg/"],
      "\ },
      \ 'ccls': {
      \   "command": "ccls",
      \   "filetypes": ["c", "cpp", "cuda", "objc", "objcpp"],
      \   "rootPatterns": [".ccls", "compile_commands.json", ".vim/", ".git/", ".hg/"],
      \   "initializationOptions": {
      \      "cache": {
      \        "directory": "/tmp/ccls",
      \      },
      "\      "clang": {
      "\        "extraArgs": [
      "\          "-std=c++17",
      "\          "-I.",
      "\        ],
      "\      },
      \   },
      \ },
      '' + ''
      \ 'dockerfile': {
      \   "command": "${pkgs.nodePackages.dockerfile-language-server-nodejs}/bin/docker-langserver",
      \   "filetypes": ["dockerfile"],
      \   "rootPatterns": [".vim/", ".git/", ".hg/"],
      \   "args": ["--stdio"],
      \ },
      \ 'rust': {
      \  'command': "rust-analyzer",
      \  'filetypes': ["rust"],
      \  'rootPatterns': ["Cargo.toml"],
      \ },
      \ 'golang': {
      \   "command": "gopls",
      \   "args": [],
      \   "rootPatterns": ["go.mod", ".vim/", ".git/", ".hg/"],
      \   "filetypes": ["go"],
      \ },
      \})
    '';

    vam.knownPlugins = vimPlugins // my_plugins // { "tlib" = vimPlugins.tlib_vim; };
    vam.pluginDictionaries = [
      { names = [
        "ale"
        "any-jump"
        "vim-addon-nix" "tlib"
        "ctrlp"
        "coc-nvim"
        #"coc-clangd"
        "rust-vim"
        "vim-rooter"
        "vim-racer"
        "fzfWrapper"
        #"vim-ripgrep"
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
        "hexmode"
      ]; }
    ];
  };
}
