set nocompatible
filetype plugin indent on
syntax on

execute pathogen#infect()

set tabstop=2       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=2    " Indents will have a width of 4
set softtabstop=2   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces

set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
colorscheme rupza

set t_8f=^[[38;2;%lu;%lu;%lum        " set foreground color
set t_8b=^[[48;2;%lu;%lu;%lum        " set background color
set t_Co=256                         " Enable 256 colors
set termguicolors                    " Enable GUI colors for the terminal to get truecolor

" NERDTree configuration
let NERDTreeShowHidden=1
"autocmd VimEnter * NERDTree
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeWinSize=60
" Ignore vim swap files in NERDTree
let NERDTreeIgnore = ['\.swp$', '\.swo$', '\~$']
" Toggle key for NERDTree

set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>
nnoremap <C-c> :bp\|bd #<CR>

set clipboard=unnamedplus

" Set line numbers
set number

let g:ctrlp_map = '<leader>f'
let g:ctrlp_cmd = 'CtrlP'

" Keybindings
nmap <F6> :NERDTreeToggle<CR>
nnoremap <F9> :Dispatch<CR>

map <leader>l :NERDTreeFind<cr>
map <leader>d :Dispatch DEBUG_UI_TEST=1 rspec %<CR>
