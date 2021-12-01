"my personal configs vimrc

set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'vimsence/vimsence'
Plugin 'preservim/nerdtree'
Plugin 'sheerun/vim-polyglot'
Plugin 'rust-lang-nursery/rustfmt'
Plugin 'JamshedVesuna/vim-markdown-preview'
call vundle#end()            
filetype plugin indent on    
Bundle 'chase/vim-ansible-yaml'
set shiftwidth=2
set tabstop=2
set number
autocmd VimEnter * NERDTree .
autocmd FileType yaml setlocal et ts=2 ai sw=2 nu sts=0
syntax on
set clipboard=unnamedplus
set splitbelow
set mouse=a
map <c-t> :bel term ++rows=11<cr>
map <c-n> :bel NERDTree<cr>
map <c-x> :bel NERDTreeClose<cr>
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   'python': [
\       'isort',
\       'yapf',
\       'remove_trailing_lines',
\       'trim_whitespace'
\   ]
\}
