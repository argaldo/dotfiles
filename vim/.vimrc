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
colorscheme nord

" airline statusbar
let g:airline_theme = 'nord'
set laststatus=2 " for airline

" nerdtree
map <C-b> :NERDTreeToggle<CR>
" MRU
map <Leader>n :MRU<CR>

" pathogen
execute pathogen#infect()
call pathogen#helptags()

set noruler
set noshowmode
set hidden
filetype plugin indent on
set termguicolors
