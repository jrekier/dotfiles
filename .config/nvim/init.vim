call plug#begin('~/.vim/plugged')

" styling
Plug 'morhetz/gruvbox'
" tweak (https://vimawesome.com/plugin/vim-airline-superman)
Plug 'vim-airline/vim-airline'

" preview pane
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'BurntSushi/ripgrep'

" note managing (https://github.com/srid/neuron)
Plug 'ihsanturk/neuron.vim'
" another note manager (https://github.com/lervag/wiki.vim)
Plug 'lervag/wiki.vim'
let g:wiki_root = '~/wiki'

" markdown preview add on
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" auto-completion (https://github.com/neoclide/coc.nvim/)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

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
