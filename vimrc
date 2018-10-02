set incsearch

" show line number and set their color
set number
highlight LineNr ctermfg=darkgrey

syntax on

" Map ctrl-backspace to delete the previous word in insert mode
noremap! <C-h> <C-w>


" use ctrl-j/k to move to the visual line below/above
nmap <C-j> gj
nmap <C-k> gk
nmap <C-h> gh
nmap <C-l> gl
