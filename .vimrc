set nocompatible hidden noswapfile backspace=indent,eol,start clipboard=unnamed | syntax on
set timeoutlen=1000 ttimeoutlen=0 noerrorbells visualbell t_vb=
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab autoindent smartindent textwidth=0
set incsearch hlsearch ignorecase smartcase
set wildmenu wildmode=list:longest,full wildignorecase wildcharm=<c-z>
set number cursorline laststatus=2 scrolloff=10
set undofile undodir=/tmp
set list listchars=tab:\|\ 

nnoremap <esc><esc> :nohlsearch<cr>
nnoremap <tab> :e <c-r>=fnameescape(expand('%:p:h'))<cr>/*<c-z>*
nnoremap <bs> :buffer#<cr>
inoremap <expr> <tab> (col('.') > 1 && strpart(getline('.'), col('.') - 2, 3) =~ '^\w') ?  "\<c-n>" :  "\<tab>"
inoremap <expr> <s-tab> (col('.') > 1 && strpart(getline('.'), col('.') - 2, 3) =~ '^\w') ?  "\<c-p>" :  "\<tab>"

" -----------------------------------------------------------------------------------

" if empty(glob('~/.vim/autoload/plug.vim'))
"   silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
"     \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"   autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
" endif
"
" call plug#begin('~/.vim/plugged')
" Plug 'w0rp/ale'
" Plug 'tpope/vim-fugitive'
" Plug 'junegunn/seoul256.vim'
" Plug 'NLKNguyen/papercolor-theme'
" call plug#end()
"
" let g:ale_linters = { 'javascript': ['eslint'] }
" set background=light
" colorscheme PaperColor
