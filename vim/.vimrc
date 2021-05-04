syntax on

set mouse-=a  " no mouse
set cursorline " cursor line highlight
set hlsearch   " highlight search
set noswapfile " no .swp
set smartindent
set tabstop=3
set softtabstop=3
set expandtab
set background=dark
set splitright
set number
colorscheme nord

" airline statusbar
let g:airline_theme = 'dracula'
set laststatus=2 " for airline

" nerdtree
map <C-b> :NERDTreeToggle<CR>
" MRU
map <C-r> :MRU<CR>
" iPython window
map <C-i> :vert term ipython3<CR>
noremap <C-c> :close<CR>

" pathogen
execute pathogen#infect()
call pathogen#helptags()

set noruler
set noshowmode
set hidden
filetype plugin indent on
set termguicolors
