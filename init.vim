" Plugins {{{
call plug#begin('~/local/share/nvim/plugged')
" Colorschemes
Plug 'adryd325/vim-adryd-monokai'
Plug 'overcache/NeoSolarized'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim'
Plug 'tomasiser/vim-code-dark'
Plug 'jacoborus/tender.vim'
" Lightline status bar
Plug 'itchyny/lightline.vim'
" Prettier format
Plug 'prettier/vim-prettier', {'do': 'yarn install' } 
" Autocompletion and Intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" File tree
Plug 'preservim/nerdtree'
" Autopairs
Plug 'jiangmiao/auto-pairs'
" Autoformat code
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
call plug#end()
" }}}

" General {{{

" Syntax Highlighting
syntax on
set exrc
set clipboard=unnamed
set foldmethod=marker
set foldlevel=0
set modelines=1
" Block cursor
" set guicursor=
" Line numbers, and in normal mode has relative numbers
set nu
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set rnu
    autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup ENDf mode() == "i"
" Some load thingy
" set hidden
" Fixes weird backspace not working in insert
set backspace=2
" No backup files
set noswapfile
" No backup files
set nobackup
set nowritebackup
" for lightline
set laststatus=2
" hides mode text on bottom
set noshowmode
" Replace tabs with space
set expandtab
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
set tabstop=2 softtabstop=2 shiftwidth=2
" Better display for messages
set cmdheight=2
" Disables complete preview
set completeopt-=preview
 
source $HOME/.config/nvim/plug-config/coc.vim
" }}}

" Keybinds {{{

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
" }}}

" Colors {{{
set termguicolors
set winblend=0
set wildoptions=pum
set pumblend=5
colorscheme NeoSolarized
let g:neosolarized_termtrans=1
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }
if !has("gui_running")
    set t_Co=256
endif
" highlight Normal guibg=none
" highlight NonText guibg=none
" }}}

" vim:foldmethod=marker:foldlevel=0
