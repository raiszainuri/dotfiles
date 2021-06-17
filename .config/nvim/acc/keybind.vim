inoremap            <C-Del>     <C-c>dei
inoremap            <C-z>       <C-c>ui
tnoremap            <Esc>       <C-\><C-n>:q!<CR>
inoremap            <C-Space>   <C-x><C-o>

nnoremap   <silent> <C-H>       :Files<cr>
nnoremap   <silent> <C-F>       :Files ~/MyProject/Programming<cr>
nnoremap   <silent> <C-G>       :Files /usr/share/nginx/html/<cr>
nnoremap   <silent> <M-Right>   :tabn<CR>
nnoremap   <silent> <M-Left>    :tabp<CR>
nnoremap            <C-n>       :NvimTreeToggle<CR>

nnoremap            <A-Up>      :m-2<CR>
nnoremap            <A-Down>    :m+<CR>
inoremap            <A-Up>      <Esc>:m-2<CR>
inoremap            <A-Down>    <Esc>:m+<CR>
