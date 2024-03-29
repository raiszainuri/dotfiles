call plug#begin('~/.config/nvim/plugged')

" misc
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'tweekmonster/startuptime.vim'
Plug 'Shougo/deoplete.nvim'
Plug 'voldikss/vim-floaterm'

"file manager
Plug 'kyazdani42/nvim-tree.lua'
Plug 'dikiaap/minimalist'

" fzf
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" theme
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'

" icon
Plug 'kyazdani42/nvim-web-devicons'

"treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()
