set encoding=utf-8
"scriptencoding utf-8

nnoremap <esc>^[ <esc>^[

set nocompatible

syntax on
set cursorline

let &t_SI = "\<esc>[6 q"
let &t_EI = "\<esc>[2 q"
if exists('&t_SR')
    let &t_SR = "\<esc>[4 q"
endif
set t_Co=256

set timeoutlen=200
set ttimeoutlen=2

set number
set relativenumber

set splitbelow splitright

set clipboard+=unnamed
set clipboard+=unnamedplus

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

filetype indent on
set autoindent
set nobackup

set ignorecase smartcase

set linebreak

set wildmenu
set wildmode=list:longest

set scrolloff=4

if has('mouse')
    set mouse=nic
    set mousemodel=popup
endif

colorscheme catppuccin_mocha
highlight Normal ctermbg=NONE guibg=NONE
highlight NonText      ctermbg=NONE guibg=NONE
highlight EndOfBuffer  ctermbg=NONE guibg=NONE
highlight StatusLine guifg=#CDD6F4 ctermbg=NONE guibg=NONE
highlight StatusLineNC guifg=#666666 ctermbg=NONE guibg=NONE


augroup TransparentBackground
  autocmd!
  autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
  autocmd ColorScheme * highlight NonText      ctermbg=NONE guibg=NONE
  autocmd ColorScheme * highlight EndOfBuffer  ctermbg=NONE guibg=NONE
augroup END

augroup TransparentStatusLine
  autocmd!
  autocmd ColorScheme * highlight StatusLine   guifg=#CDD6F4 ctermbg=NONE guibg=NONE
  autocmd ColorScheme * highlight StatusLineNC guifg=#666666 ctermbg=NONE guibg=NONE
augroup END


set matchpairs+=<:>,「:」

set termguicolors

set laststatus=2

set statusline=%f
set statusline+=%{getbufvar(bufnr('%'),'&mod')?'[+]':''}
set statusline+=%r
set statusline+=\ %=
set statusline+=%l/%L[%p%%]\ %c
set statusline+=\ \%n\ 
set showcmd
set showmode

set showmatch

set hlsearch

let mapleader = " "
set history=100
map <leader>wv <C-w>v
map <leader>wh <C-w>s
map <leader>wx <cmd>close<CR>
map <leader>we <C-w>=

map - <cmd>w<CR><cmd>Ex<CR>
nnoremap <leader><leader> :ls<CR>:call feedkeys(":b ", "n")<CR>

map <Esc> <cmd>nohl<CR>



