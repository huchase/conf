" Luo JianFeng'.vimrc
set nu
sy on
set ruler
set smartindent shiftwidth=2 " default: 4
set tabstop=2 " default: 4
set expandtab

set listchars=tab:>-,trail:~
set list
"colorscheme desert

" base
set nocompatible
set showcmd
set mouse=a
filetype indent on " *.py -> ~/.vim/indent/python.vim
set cursorline
set scrolloff=10 " very useful
set hlsearch
set ignorecase
set incsearch
set undofile
set history=100
set undodir=~/.vim/undo// " you must run mkdir first, can't do it by itself
set backupdir=~/.vim/backup//
set directory=~/.vim/swp//
set wildmenu " very useful

" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'itchyny/lightline.vim'
Plug 'crusoexia/vim-monokai'
Plug 'Yggdroot/indentLine'
Plug 'neoclide/coc.nvim',{'branch':'release'}
call plug#end()
map <C-n> :NERDTreeToggle<CR>
nnoremap <F3> :NERDTreeToggle<CR>
autocmd vimenter * if !argc()|NERDTree|endif
let g:NERDTreeWinSize=20
set laststatus=2
colo monokai
let g:indent_guides_start_level=2



" remaping
imap jk <Esc>
nnoremap tn :tabnew<CR>
nnoremap tj :tabnext<CR>
nnoremap tk :tabprev<CR>
nnoremap tc :tabclose<CR>
nnoremap sa :wq<CR>
