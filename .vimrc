" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'morhetz/gruvbox'
Plug 'majutsushi/tagbar'
"Plug 'bling/vim-airline'
"Plug 'valloric/youcompleteme'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'kien/ctrlp.vim'
Plug 'rking/ag.vim'
Plug 'embear/vim-localvimrc'
Plug 'beyondmarc/opengl.vim'
Plug 'vim-scripts/glsl.vim'
Plug 'thaerkh/vim-workspace'
Plug 'jistr/vim-nerdtree-tabs'

" diff merge conflicts support
Plug 'tpope/vim-unimpaired'
" Initialize plugin system
call plug#end()

" colorschemes

colorscheme gruvbox
set background=dark

"""""""""""""""""""""""""""""""
set colorcolumn=110
highlight ColorColumn ctermbg=lightgreen
"""""""""""""""""""""""""""""""
let g:mapleader=','
"""""""""""""""""""""""""""""""

set tabstop=2
set shiftwidth=2
set smarttab
set et

set wrap
set ai

set cin

set showmatch
set hlsearch
set incsearch
set ignorecase

set lz
set rnu
set nu

set foldenable
set foldmethod=syntax
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufNewFile,BufRead *.frag,*.vert,*.fp,*.vp,*.glsl setf glsl
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Session
"
let g:workspace_create_new_tabs = 0  " enabled = 1 (default), disabled = 0"
let g:workspace_session_name = 'Session.vim'
nnoremap <leader>s :ToggleWorkspace<CR>
"let g:workspace_session_directory = $HOME . '/.vim/sessions/'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map <Leader> <Plug>(easymotion-prefix)
