" $HOME/.vim/init/leader.vimrc

let mapleader=","               " set the leader key to the comma key
let maplocalleader=","          " set the local leader key to the comma key
map <leader>td :call ToggleThemeMode('dark')<CR>
map <leader>tl :call ToggleThemeMode('')<CR>
nnoremap <leader>o :Files<CR>
nnoremap <leader>km :Filetypes<CR>
nnoremap <leader>c :bp<BAR>bd#<CR>
