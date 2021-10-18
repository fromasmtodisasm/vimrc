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
Plug 'ilyachur/cmake4vim'
Plug 'othree/xml.vim'
Plug 'amiorin/vim-project'
Plug 'tpope/vim-dispatch'

Plug 'haya14busa/incsearch.vim'

Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'haya14busa/incsearch-easymotion.vim'

" diff merge conflicts support
Plug 'tpope/vim-unimpaired'
" Initialize plugin system
call plug#end()

" colorschemes

colorscheme gruvbox
set background=dark

"""""""""""""""""""""""""""""""
set colorcolumn=125
highlight ColorColumn ctermbg=lightgreen
"""""""""""""""""""""""""""""""
"let g:mapleader=','
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
let g:ctrlp_custom_ignore = 'build\|stage|git'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:localvimrc_sandbox=0
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let xml_tag_completion_map = "<C-l>"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Leader><Leader> <Plug>(easymotion-prefix)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" :h g:incsearch#auto_nohlsearch
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" In insert or command mode, move normally by using Ctrl
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>

