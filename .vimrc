set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'preservim/nerdtree'

Plugin 'terryma/vim-multiple-cursors'

Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

Plugin 'airblade/vim-gitgutter'

Plugin 'mhartington/oceanic-next'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'Shougo/neocomplete.vim'
Plugin 'dense-analysis/ale'

Plugin 'ryanoasis/vim-devicons'
Plugin 'vim-test/vim-test'
call vundle#end()

set encoding=UTF-8
set number
set guifont=DroidSansMono\ Nerd\ Font:h11
syntax on
filetype plugin indent on
" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2

filetype on
filetype indent on

autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal expandtab shiftwidth=2 tabstop=2

noremap \ :Commentary<CR>
autocmd FileType ruby setlocal commentstring=#\ %s

map <C-o> :NERDTreeToggle<CR>
autocmd BufWinEnter * NERDTreeFind
map ] :NERDTreeFind<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd VimEnter * NERDTree | wincmd p

syntax enable
if (has("termguicolors"))
  set termguicolors
endif

let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
let g:dracula_italic = 0

" colorscheme OceanicNext
colorscheme dracula
let g:airline_powerline_fonts = 1
" these "Ctrl mappings" work well when Caps Lock is mapped to Ctrl
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>
