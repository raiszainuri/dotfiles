call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'mattn/emmet-vim'
Plug 'dikiaap/minimalist'
Plug 'preservim/nerdtree'
Plug 'Yggdroot/indentLine'

call plug#end()

let g:airline_theme='minimalist'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:user_emmet_mode='a'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

set t_Co=256
syntax on
colorscheme minimalist

inoremap <C-BS> <C-w>
inoremap <C-Del> <C-c>dei
inoremap <C-z> <C-c>ui
tnoremap <Esc> <C-\><C-n>:q!<CR>
"inoremap <C-s> <C-c>:w<CR>
"
:set tabstop=4
:set shiftwidth=4
:set expandtab
:set number relativenumber
