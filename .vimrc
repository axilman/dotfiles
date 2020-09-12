syntax enable
set title
set expandtab " use space instead of tab
"set noexpandtab
set tabstop=4
set softtabstop=0
set shiftwidth=4 " shftwidth auto indented with the reindent operations
set ignorecase
set smartcase
set mousehide
set backspace=indent,eol,start
set bg=light
set nohlsearch

command! Q quit
command! W write
command! WQ wq

set autoindent
set showmatch
set wrap
set lbr
set nu

set nocp incsearch
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr
colorscheme ron
inoremap [ []<left>
inoremap ( ()<left>
inoremap { {}<left>
inoremap " ""<left>
inoremap ' ''<left>
inoremap kj ^[
vmap <silent> ;h :s?^\(\s*)+ '\([^']\+\)',*\s*$?\1\2?g<CR>
vmap <silent> ;q :s?^\(\s*\)\(.*\)\s*$? \1 + '\2'?<CR>
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab indentkeys-=0# indentkeys-=<:>
