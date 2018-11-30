set incsearch

" show line number and set their color
set number
highlight LineNr ctermfg=darkgrey

" ignore case during search
set ignorecase
" case-sensitive only if capitals in search
set smartcase

" highlight search results
set hlsearch
" double escape to turn off highlighting when searching is done
nnoremap <esc><esc> :silent! nohls<cr>

" Use system clipboard instead of vim internal
set clipboard=unnamedplus

syntax on

" Map ctrl-backspace to delete the previous word in insert mode
noremap! <C-h> <C-w>

" Add a few lines limit at top and bottom to autoscroll before it
set scrolloff=6


" use ctrl-j/k to move to the visual line below/above
nmap <C-j> gj
nmap <C-k> gk
nmap <C-h> gh
nmap <C-l> gl
