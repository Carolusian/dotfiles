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
  Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'stsewd/isort.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'mhartington/nvim-typescript', {'do': ':!install.sh \| UpdateRemotePlugins'}
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'Shougo/denite.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'zchee/deoplete-jedi'
Plug 'davidhalter/jedi-vim' " For python auto completion
Plug 'ervandew/supertab' " tab completion

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'kien/ctrlp.vim'

Plug 'w0rp/ale' " linting
Plug 'editorconfig/editorconfig-vim'
Plug 'sbdchd/neoformat'

Plug 'majutsushi/tagbar'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim' " expending html tags
Plug 'Lokaltog/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth' " heuristically set buffer options, like shiftwidth
Plug 'tmhedberg/SimpylFold'
Plug 'mattn/webapi-vim'

" js
Plug 'HerringtonDarkholme/yats.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'jxnblk/vim-mdx-js'
Plug 'prettier/vim-prettier'

" theme
Plug 'dracula/vim' 
Plug 'dikiaap/minimalist'
Plug 'vim-airline/vim-airline'

Plug '/usr/local/opt/fzf' " install with brew install fzf
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive' " git commands

" Disabled tags
" Plug 'ludovicchabant/vim-gutentags' " Manage tag files automatically,

let g:python_host_prog = '/Users/cs/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/Users/cs/.pyenv/versions/neovim3/bin/python'
let g:deoplete#enable_at_startup = 1

call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" misc settings
set t_Co=256
set guifont=Source\ Code\ Pro:h14
syntax on
colorscheme minimalist


set number
set nowrap " don't wrap lines
set noshowmode "don't show --INSERT--
let NERDTreeIgnore = ['\.pyc$'] " .pyc is annoying


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Keep the error column always visible (jumpy when linter runs on input)
set signcolumn=yes


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctrlp use .gitignore
" https://github.com/kien/ctrlp.vim/issues/174
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fold settings
set foldmethod=syntax
set foldnestmax=10
set nofoldenable
set foldlevel=1
let javaScript_fold=1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" disable vim-jedi auto completion, we use deoplete
" but still use vim-jedi for goto definition
let g:jedi#completions_enabled = 0


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" airline
let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key mappings
" map <C-N> :NERDTreeToggle %<CR>
map <C-N><C-F> :NERDTreeFind<CR>

" toggle commenting of lines with command + c
map <C-c> :Commentary<cr>

" map Shift + F (Search & Find) to Ag (Ack alternative, fzf required)
nmap <S-F> :Ag<space>

" kick start tagbar
nnoremap <silent> <C-T><C-T> :TagbarToggle<CR>

" buffers
nnoremap <S-tab> :bn<CR>
nnoremap <Leader>cb :bp \| bd #<CR>

" Mappings for moving lines and preserving indentation
" http://vim.wikia.com/wiki/Moving_lines_up_or_down
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Goto definition key mappings 
nnoremap <buffer> <C-]> :ALEGoToDefinition<CR>
autocmd FileType python          nnoremap <buffer> <C-]> :call jedi#goto()<CR>
autocmd FileType typescript      nnoremap <buffer> <C-]> :TSDef<CR>

" terminal
if has('nvim')
  tnoremap <Esc> <C-\><C-n>
  tnoremap <C-v><Esc> <Esc>
endif
autocmd TermOpen * set bufhidden=hide


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Run Neoformat on save
" augroup fmt
"   autocmd!
"   autocmd BufWritePre * undojoin | Neoformat
" augroup END
