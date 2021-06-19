let g:nvim_tree_indent_markers = 0
let g:nvim_tree_follow = 1

let g:nvim_tree_icons = {
    \ 'default': ' ',
    \ 'symlink': ' ',
    \ 'git': {
    \   'unstaged': " ✗",
    \   'staged': " ✓",
    \   'unmerged': " ",
    \   'renamed': " r",
    \   'untracked': " ★"
    \   },
    \ 'folder': {
    \   'default': "",
    \   'open': "",
    \   'empty': "e",
    \   'empty_open': "e",
    \   'symlink': "",
    \   }
    \ }

hi NvimTreeIndentMarker     guifg=#504945
hi NvimTreeFolderIcon       guifg=#A89984
hi NvimTreeFolderName       guifg=#A89984
hi NvimTreeEmptyFolderName  guifg=#A89984
