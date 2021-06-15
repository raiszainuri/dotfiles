let g:nvim_tree_indent_markers = 1
let g:nvim_tree_follow = 1

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

hi NvimTreeIndentMarker     guifg=#E4E4E4
hi NvimTreeFolderIcon       guifg=#E4E4E4
hi NvimTreeFolderName       guifg=#E4E4E4
hi NvimTreeEmptyFolderName  guifg=#4E4E4E