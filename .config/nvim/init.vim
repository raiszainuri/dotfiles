call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'mattn/emmet-vim'
Plug 'dikiaap/minimalist'
Plug 'preservim/nerdtree'
Plug 'Yggdroot/indentLine'
Plug 'majutsushi/tagbar'
Plug 'Shougo/deoplete.nvim'
Plug 'dense-analysis/ale'
Plug 'SirVer/ultisnips'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'kyazdani42/nvim-web-devicons'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'ryanoasis/vim-devicons'

call plug#end()

let g:python3_host_prog = '/usr/bin/python3'
let g:python_host_prog = '/usr/bin/python'
let g:airline_theme='minimalist'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:user_emmet_mode='a'
let g:user_emmet_install_global = 0
let $FZF_DEFAULT_COMMAND = 'rg --files --ignore --hidden --follow --glob "!.git/*"'

autocmd FileType html,css EmmetInstall

set t_Co=256
syntax on
colorscheme minimalist

inoremap            <C-BS>      <C-w>
inoremap            <C-Del>     <C-c>dei
inoremap            <C-z>       <C-c>ui
tnoremap            <Esc>       <C-\><C-n>:q!<CR>
nmap                <F8>        :TagbarToggle<CR>
nnoremap   <silent> <C-H>       :Files<cr>
nnoremap   <silent> <C-F>       :Files ~/MyProject/Programming<cr>



set tabstop=4
set shiftwidth=4
set expandtab
set number
set noswapfile
set encoding=UTF-8

" ==================

set breakindent
"set breakindentopt=shift:2,min:40,sbr
set showbreak=>>   

" ==================
" Shorten error/warning flags
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
" I have some custom icons for errors and warnings but feel free to change them.
let g:ale_sign_error = '=>'
let g:ale_sign_warning = '->'

" Disable or enable loclist at the bottom of vim 
" Comes down to personal preferance.
let g:ale_open_list = 0
let g:ale_loclist = 0

" Setup compilers for languages
let g:ale_linters = {
      \  'cs':['syntax', 'semantic', 'issues'],
      \  'python': ['pylint'],
      \  'java': ['javac']
      \ }

" ==================
" " Don't forget to start deoplete let g:deoplete#enable_at_startup = 1 " Less spam let g:deoplete#auto_complete_start_length = 2 
" Use smartcase
let g:deoplete#enable_smart_case = 1
" Setup completion sources
let g:deoplete#sources = {}

" ==================
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
