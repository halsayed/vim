" version v1.0 Draft
"
set nocompatible              " required
filetype off                  " required

" testing config without plugins
colorscheme badwolf 
syntax enable           " enable syntax processing
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces

" UI config
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]

" searching options
set incsearch           " search as characters are entered
set hlsearch            " highlight matches


" vim-plugin manager
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" my testing plugins
"git interface
Plug 'tpope/vim-fugitive'
"filesystem
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'kien/ctrlp.vim' 

"html
"  isnowfy only compatible with python not python3
"Plug 'isnowfy/python-vim-instant-markdown'
"Plug 'jtratner/vim-flavored-markdown'
"Plug 'suan/vim-instant-markdown'
"Plug 'nelstrom/vim-markdown-preview'
"python sytax checker
"Plug 'nvie/vim-flake8'
"Plug 'vim-scripts/Pydiction'
"Plug 'vim-scripts/indentpython.vim'
"Plug 'scrooloose/syntastic'

"auto-completion stuff
"Plugin 'klen/python-mode'
"Plug 'Valloric/YouCompleteMe'
"Plug 'klen/rope-vim'
Plug 'davidhalter/jedi-vim'
"Plug 'ervandew/supertab'
""code folding
Plug 'tmhedberg/SimpylFold'

"Colors!!!
Plug 'altercation/vim-colors-solarized'
Plug 'jnurmine/Zenburn'

" Initialize plugin system
call plug#end()


nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za
