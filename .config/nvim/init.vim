call plug#begin('~/.config/nvim/plugged')

Plug 'dikiaap/minimalist' "theme
Plug 'mattn/emmet-vim' "html generator
Plug 'Yggdroot/indentLine' "line
Plug 'Shougo/deoplete.nvim' "deoplet
Plug 'SirVer/ultisnips' "snippet
Plug 'honza/vim-snippets' "snippet
Plug 'junegunn/fzf' "fzf
Plug 'junegunn/fzf.vim' "fzf
Plug 'vim-airline/vim-airline' "theme
Plug 'ryanoasis/vim-devicons' "icon
Plug 'kyazdani42/nvim-tree.lua' "tree
Plug 'tweekmonster/startuptime.vim'

"Plug 'kyazdani42/nvim-web-devicons' " for file icons
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  "theme ~ contrast color
"Plug 'dense-analysis/ale' "showing error
"Plug 'majutsushi/tagbar' "knowing properties
"Plug 'neovim/nvim-lspconfig' "lsp
"Plug 'preservim/nerdtree' "directory viewer
"Plug 'kyazdani42/nvim-web-devicons' "icon

call plug#end()


" ---------------------------------------------------------------------------------------------


syntax on
colorscheme minimalist

set t_Co=256
set tabstop=4
set shiftwidth=4
set expandtab
set number
set relativenumber
set noswapfile
set encoding=UTF-8
set breakindent
set showbreak=>> "set breakindentopt=shift:2,min:40,sbr
"set mouse=a
set cursorline

hi CursorLine term=bold cterm=bold guibg=#121212


" ---------------------------------------------------------------------------------------------


"let g:python3_host_prog = '/usr/bin/python3'
"let g:python_host_prog = '/usr/bin/python'
let g:airline_theme='minimalist'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#left_sep = '||'

let g:nvim_tree_indent_markers = 1
let g:nvim_tree_follow = 1

" EMMET
let g:user_emmet_mode='a'
let g:user_emmet_install_global = 0

" FZF
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --no-require-git'

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"


" ---------------------------------------------------------------------------------------------


" autocmd FileType html,css EmmetInstall


" ---------------------------------------------------------------------------------------------


inoremap            <C-Del>     <C-c>dei
inoremap            <C-z>       <C-c>ui
tnoremap            <Esc>       <C-\><C-n>:q!<CR>
inoremap            <C-Space>   <C-x><C-o>

nnoremap   <silent> <C-H>       :Files<cr>
nnoremap   <silent> <C-F>       :Files ~/MyProject/Programming<cr>
nnoremap   <silent> <M-Right>   :tabn<CR>
nnoremap   <silent> <M-Left>    :tabp<CR>
nnoremap            <C-n>       :NvimTreeToggle<CR>

nnoremap            <A-Up>      :m-2<CR>
nnoremap            <A-Down>    :m+<CR>
inoremap            <A-Up>      <Esc>:m-2<CR>
inoremap            <A-Down>    <Esc>:m+<CR>

" ---------------------------------------------------------------------------------------------


" Shorten error/warning flags
"let g:ale_echo_msg_error_str = 'E'
"let g:ale_echo_msg_warning_str = 'W'

" I have some custom icons for errors and warnings but feel free to change them.
"let g:ale_sign_error = '=>'
"let g:ale_sign_warning = '->'

" Disable or enable loclist at the bottom of vim 
" Comes down to personal preferance.
"let g:ale_open_list = 0
"let g:ale_loclist = 0

" Setup compilers for languages
"let g:ale_linters = {
"      \  'cs':['syntax', 'semantic', 'issues'],
"      \  'python': ['pylint'],
"      \  'java': ['javac']
"      \ }


" ---------------------------------------------------------------------------------------------


" Don't forget to start deoplete 
let g:deoplete#enable_at_startup = 1 
" Less spam let g:deoplete#auto_complete_start_length = 2 
" Use smartcase
" let g:deoplete#enable_smart_case = 1
" Setup completion sources
" let g:deoplete#sources = {}


" ---------------------------------------------------------------------------------------------     


" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }


" ------------------------------------------------------------------
"
let g:nvim_tree_icons = {
    \ 'default': ' ',
    \ 'symlink': ' ',
    \ 'git': {
    \   'unstaged': "-> ✗",
    \   'staged': "-> ✓",
    \   'unmerged': "-> ",
    \   'renamed': "-> r",
    \   'untracked': "-> ★"
    \   },
    \ 'folder': {
    \   'default': "",
    \   'open': "",
    \   'empty': "e",
    \   'empty_open': "e",
    \   'symlink': "",
    \   }
    \ }

set termguicolors
hi NvimTreeIndentMarker     guifg=#E4E4E4
hi NvimTreeFolderIcon       guifg=#E4E4E4
hi NvimTreeFolderName       guifg=#E4E4E4
hi NvimTreeEmptyFolderName  guifg=#4E4E4E
