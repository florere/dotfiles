filetype plugin indent on
syntax on

set ttimeoutlen=0 noerrorbells visualbell t_vb=
set backspace=indent,eol,start clipboard=unnamed,autoselect mouse=a
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab autoindent smartindent textwidth=0
set incsearch hlsearch ignorecase smartcase gdefault
set wildmenu wildmode=list:longest,full wildignorecase wildcharm=<c-z>
set number cursorline scrolloff=10
set hidden noswapfile undofile undodir=/tmp
set list listchars=tab:\|\ 

nnoremap <esc><esc> :nohlsearch<cr>
nnoremap <tab> :e <c-r>=fnameescape(expand('%:p:h'))<cr>/*<c-z>*
nnoremap <bs> :buffer#<cr>
nnoremap <space> :b<space><c-z><c-z>

inoremap <expr> <tab> (col('.') > 1 && strpart(getline('.'), col('.') - 2, 3) =~ '^\w') ?  "\<c-n>" :  "\<tab>"
inoremap <expr> <s-tab> (col('.') > 1 && strpart(getline('.'), col('.') - 2, 3) =~ '^\w') ?  "\<c-p>" :  "\<tab>"

cnoremap <c-a> <home>
cnoremap <c-e> <end>
cnoremap <c-x>f <C-\>egetcmdline().expand('%')<cr>
cnoremap <c-x>p <C-\>egetcmdline().expand('%:p:h')<cr>
cnoremap <s-left> <C-\>esubstitute(getcmdline(), "\\(.*\[/\]\\).*/", "\\1", "")<cr>

vnoremap H <gv
vnoremap L >gv
vnoremap K :m '<-2<cr>gv
vnoremap J :m '>+1<cr>gv

augroup vimrc
  autocmd!
  autocmd BufEnter * if line2byte(expand("$")) > 32 * 1024 | syntax off | else | syntax on | endif
  autocmd BufEnter * if !exists("b:ale_enabled") | execute "ALEDisableBuffer" | endif
augroup END

" " -----------------------------------------------------------------------------------
" if empty(glob('~/.vim/autoload/plug.vim'))
"   silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
"     \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"   autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
" endif
"
call plug#begin('~/.vim/plugged')
Plug 'w0rp/ale'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'avlasyuk/seoul256.vim'
Plug 'KKPMW/distilled-vim'
Plug 'junegunn/vim-easy-align'
Plug 'sheerun/vim-polyglot'
call plug#end()

let g:ale_linters = { 'javascript': ['eslint'], 'html': ['htmlhint'], 'css': ['stylelint'] }
nnoremap <space> :Buffers<cr>
nnoremap <c-l> :ALEToggleBuffer<cr>
xmap ga <Plug>(EasyAlign)

set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set background=dark
let g:seoul256_background = 236
colorscheme seoul256
