set nu
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'itchyny/lightline.vim'
call plug#end()
map <C-n> :NERDTreeToggle<CR>
set laststatus=2
