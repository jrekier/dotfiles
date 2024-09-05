call plug#begin('~/.vim/plugged')

" styling
Plug 'morhetz/gruvbox'
" tweak (https://vimawesome.com/plugin/vim-airline-superman)
Plug 'vim-airline/vim-airline'

" preview pane
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'BurntSushi/ripgrep'

" markdown preview add on
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

call plug#end()

" line numbering
set number

" styling
set background=dark 
colorscheme gruvbox

" enable mouse
set mouse=a

" remap <Leader> character to ',' (default '\')
let mapleader = ","
