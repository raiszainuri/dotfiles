inoremap            <C-Del>     <C-c>dei a
inoremap            <C-z>       <C-c>ui
inoremap            <C-Space>   <C-x><C-o>
tnoremap            <Esc>       <C-\><C-n>:q!<CR>

noremap    <silent> <M-BS>      :bd<CR>
noremap    <silent> <C-P>       <Esc>:w<cr>:FloatermNew --title=ㅤjavaㅤ --autoclose=0 echo "compiling..." && javac % && java ./%<cr>
"noremap    <silent> <C-P>       <Esc>:w<cr>:FloatermNew --title=node --autoclose=0 node %<cr>
"noremap    <silent> <C-P>       <Esc>:w<cr>:FloatermNew --title=php --autoclose=0 php %<cr>
"noremap    <silent> <C-P>       <Esc>:w<cr>:FloatermNew --title=php --autoclose=0 neofetch --source ~/.config/nf_ascii<cr>

nnoremap   <silent> <C-H>       :Files<cr>
nnoremap   <silent> <C-F>       :Files ~/MyProject/Programming<cr>
nnoremap   <silent> <C-G>       :Files /usr/share/nginx/html/<cr>
nnoremap   <silent> <C-[>       :FloatermKill<cr>
nnoremap   <silent> <M-Right>   :tabn<CR>
nnoremap   <silent> <M-Left>    :tabp<CR>
nnoremap            <C-n>       :NvimTreeToggle<CR>

nnoremap            <A-Up>      :m-2<CR>
nnoremap            <A-Down>    :m+<CR>
inoremap            <A-Up>      <Esc>:m-2<CR>
inoremap            <A-Down>    <Esc>:m+<CR>
