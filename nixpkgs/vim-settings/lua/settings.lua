local opt = vim.opt
local g = vim.g
local cmd = vim.cmd -- execute Vim commands

-- find fuzz search setting
opt.path = opt.path + "**"

-- sign column settings
opt.signcolumn = "number"
opt.number = true

-- Style settings
opt.termguicolors = true -- enable 24-bit RGB colors
opt.background = 'dark'
cmd [[colorscheme molokai]]

-- vim fugitive setting
opt.diffopt = opt.diffopt + "vertical"

-- airline settings
local gset = vim.api.nvim_set_var
gset('airline_theme', 'molokai')
gset('airline#extensions#ale#enabled', 1)
gset('airline#extensions#tabline#enabled', 1)
gset('airline#extensions#tabline#fnamemod', ':t')
gset('airline#extensions#tabline#formatter', 'default')

-- vim-go settings
gset('go_highlight_build_constraints', 1)
gset('go_highlight_extra_types', 1)
gset('go_highlight_fields', 1)
gset('go_highlight_functions', 1)
gset('go_highlight_methods', 1)
gset('go_highlight_operators', 1)
gset('go_highlight_structs', 1)
gset('go_highlight_types', 1)
gset('go_fmt_command', 'goimports')
gset('go_auto_type_info', 1)

vim.cmd [[
  autocmd FileType go nmap <leader>b <Plug>(go-build)
  autocmd FileType go nmap <leader>r <Plug>(go-run)
  autocmd FileType go nmap <leader>t <Plug>(go-test)
  autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
  autocmd FileType go nmap <Leader>r <Plug>(go-callers)
  autocmd FileType go nmap <Leader>f <Plug>(go-fmt)
  autocmd FileType go nmap <Leader>l <Plug>(go-lint)
  autocmd FileType go nmap <Leader>v <Plug>(go-vet)

  au BufWritePre,FileWritePre *.go :GoFmt
  au BufWritePre,FileWritePre *.go :GoImports
]]

dofile("/Users/calvin/calvin-nix-conf/nixpkgs/vim-settings/lua/lsp.lua")
