" Munta's Very Bad INIT.VIM
" 11/9/2021
" Work in progress
 
" Plugins
call plug#begin('~/local/share/nvim/plugged')
Plug 'adryd325/vim-adryd-monokai'
Plug 'jacoborus/tender.vim'
Plug 'sickill/vim-monokai'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tmsvg/pear-tree'
Plug 'dracula/vim'
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'Shougo/context_filetype.vim'
call plug#end()
 
" Syntax Highlighting
syntax on
set exrc
set t_Co=256
set clipboard=unnamed
" Block cursor
" Line numbers, and in normal mode has relative numbers
set nu
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set rnu
    autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup ENDf mode() == "i"
" Some load thingy
set hidden
" Fixes weird backspace not working in insert
set backspace=2
" No backup files
set noswapfile
" No backup files
set nobackup
set nowritebackup
" No highlighted words in search
set nohlsearch
" Scrolls 4 lines before
set scrolloff=4
" No text wrap
set nowrap
" Searches while typing
set incsearch
" Column on side
set signcolumn=yes
" No error bells
set belloff=all
" Tab length
set tabstop=4 softtabstop=4 shiftwidth=4
" Better display for messages
set cmdheight=2
" Disables complete preview
set completeopt-=preview
 
 
source $HOME/.config/nvim/plug-config/coc.vim
autocmd TermOpen * startinsert
let g:node_client_debug = 1
let g:coc_node_path='/usr/bin/nodejs'
let g:jedi#auto_vim_configuration = 0
let g:jedi#popup_on_dot = 1
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#enviroment_path="/usr/bin/python3.8"
 
" Compile and Run Code
autocmd FileType javascript nnoremap <buffer> <C-c> :w <bar> :terminal node "%" <CR>
autocmd FileType python nnoremap <buffer> <C-c> :w <bar> :terminal python3 "%" <CR>
autocmd FileType java  nnoremap <buffer> <C-c> :w <bar> :terminal javac "%"<CR>
autocmd FileType cpp nnoremap <buffer> <C-c> :w <bar> :terminal g++ "%" -o "%:t:r" <CR>
autocmd FileType java  nnoremap <C-x> :terminal java -cp "%:p:h" "%:t:r" <CR>
autocmd FileType cpp nnoremap <C-x> :terminal ./"%:t:r" <CR>
 
" NERDTree keys
nnoremap <C-s> :w <CR>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
 
" no more arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

colorscheme gruvbox
let g:airline_theme='gruvbox'
hi Normal guibg=NONE ctermbg=NONE
