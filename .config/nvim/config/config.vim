" Syntax
syntax on
let base16colorspace=256
set background=dark
highlight Error ctermfg=15
highlight Error ctermbg=black

" Indentation
set tabstop=4
set expandtab
set shiftwidth=4

" Case sensitivity
set ignorecase
set smartcase

" Line numbers
augroup active_relative_number
  au!
  au BufEnter * :setlocal number relativenumber
  au WinEnter * :setlocal number relativenumber
  au FocusGained * :setlocal number relativenumber
  au BufLeave * :setlocal norelativenumber
  au WinLeave * :setlocal norelativenumber
  au FocusLost * :setlocal norelativenumber
augroup END

" Open new split panes more naturally
set splitbelow
set splitright

" Disable swap files
set noswapfile

" Disable Neovim welcome message
set shortmess=atTiOI
