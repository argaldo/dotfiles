" Language Server Protocol
packadd lsp

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
"colorscheme dracula
"colorscheme gruvbox 
"colorscheme monokai
"colorscheme solarized
"colorscheme apprentice

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

" go to the position I was when last editing the file
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

" change color scheme with programming language
autocmd FileType python colorscheme nord
autocmd FileType rust colorscheme gruvbox
autocmd FileType java colorscheme desert

" Adding Python LSP
call LspAddServer([#{name: 'pylsp',
                 \   filetype: 'python',
                 \   path: '/home/argaldo/.local/bin/pylsp',
                 \   args: []
                 \ }])
" Opening NERDTree on startup and go to editing window
au VimEnter * NERDTree
au VimEnter * wincmd l

" Function to close NERDTree if it is the one and only last buffer left
function! s:CloseIfOnlyControlWinLeft()
  if winnr("$") != 1
    return
  endif
  if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
        \ || &buftype == 'quickfix'
    q
  endif
endfunction
augroup CloseIfOnlyControlWinLeft
  au!
  au BufEnter * call s:CloseIfOnlyControlWinLeft()
augroup END
