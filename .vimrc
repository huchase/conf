" Luo JianFeng'.vimrc
set nu
sy on
set ruler
set smartindent shiftwidth=2 " default: 4
set tabstop=2 " default: 4
set expandtab

set listchars=tab:>-,trail:~
set list
colorscheme desert
" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'itchyny/lightline.vim'
call plug#end()
map <C-n> :NERDTreeToggle<CR>
set laststatus=2
