let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --no-require-git'

" This is the default extra key bindings
let g:fzf_action = {
  \ 'return': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' } 
"'ctrl-t': 'tab split',
