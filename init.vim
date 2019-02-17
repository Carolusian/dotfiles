if &compatible
  set nocompatible
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plugged
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'stsewd/isort.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'mhartington/nvim-typescript', {'do': ':!install.sh \| UpdateRemotePlugins'}
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'zchee/deoplete-jedi'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'kien/ctrlp.vim'
Plug 'sbdchd/neoformat'
Plug 'majutsushi/tagbar'
Plug 'ervandew/supertab' " tab completion
Plug 'jiangmiao/auto-pairs'
Plug 'Lokaltog/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth' " heuristically set buffer options, like shiftwidth
Plug 'mattn/webapi-vim'

Plug 'HerringtonDarkholme/yats.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'jxnblk/vim-mdx-js'
Plug 'prettier/vim-prettier'

Plug 'dracula/vim' " theme

Plug '/usr/local/opt/fzf' " install with brew install fzf
Plug 'junegunn/fzf.vim'


let g:python_host_prog = '/Users/cs/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/Users/cs/.pyenv/versions/neovim3/bin/python'
let g:deoplete#enable_at_startup = 1

call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" misc settings
set guifont=Source\ Code\ Pro:h14
syntax on
color dracula
set number
set nowrap " don't wrap lines
let NERDTreeIgnore = ['\.pyc$'] " .pyc is annoying

" view the current buffer in NERDTree
" map <C-o> :NERDTreeToggle %<CR>
map <C-o> :NERDTreeFind<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" toggle commenting of lines with command + /
map <C-c> :Commentary<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctrlp use .gitignore
" https://github.com/kien/ctrlp.vim/issues/174
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" map Shift + F to Ag (Ack alternative, fzf required)
nmap <S-F> :Ag<space>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" kick start tagbar
nnoremap <silent> <C-K><C-T> :TagbarToggle<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Run Neoformat on save
" augroup fmt
"   autocmd!
"   autocmd BufWritePre * undojoin | Neoformat
" augroup END
