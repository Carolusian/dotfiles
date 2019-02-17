# dotfiles
Just keep my dotfiles here

### Installation

You need to clone it to C:\User\<Username>\dotfiles


#### Sublime

```sh
$ cd C:\User\<Username>\AppData\Roaming\Sublime Text 3\Packages\User
$ mklink "Package Control.sublime-settings" "C:\User\<Username>\dotfiles\sublime3\Package Control.sublime-settings"
$ mklink "Preferences.sublime-settings" "C:\User\<Username>\dotfiles\sublime3\Preferences.sublime-settings"
```

#### Neovim

* See how to setup Python for Neovim: [https://github.com/deoplete-plugins/deoplete-jedi/wiki/Setting-up-Python-for-Neovim]
* Use `:checkhealth` and `:UpdateRemotePlugins` to debug plugin installations
* Install `fzf` and `Ag` with: `brew install fzf && brew install the_silver_searcher`
* Install `ctags` with: `brew install ctags`
* Useful shortcuts:
  * Python specific:
    * `:Isort`
  * easymotion: `<LEADER><LEADER>w`, `<LEADER><LEADER>b`
  * NERDTree: 
    * `go`, `s`, `i`
    * map <C-o> :NERDTreeFind<cr> (Make NERDTree return current buffer in new tabs)
  * CtrlP: `C+t`, `C+v`, `C+h`
  * fzf: `:FZF` and `Ag`
  * vim-surround: `cs"'`, `ds"` and `vlllllS'`
  * tagbar:
    * <CR> (Jump to tag)
    * `p`, `P` (Jump and stay)
    * <C-N>, <C-P>
    * <Space>
  * vim splits (Control + Window): 
    * `C+ww`, `C+w{hljk}` (move)
    * `:sp` (horizontal)
    * `vsp` (vertical)
    * `C+w_` (maximise) 
    * `C+w=` (Resize equally) 
    * `C+w{n}{+-}` (Resize by number of lines)
  * tabs: `:tabedit {file}`
  * moves:
    * `C+d` and `C+u` (Move 1/2 screen)
  * save and quit all: `:wqa`
  * reload .vimrc: `:so %` (**so**urce current buffer)
  * registers: `reg`, `"`
* Key notions:
  * <C>: Control
  * <D>: Command
  * <S>: Shift
  * <Leader>: \
  * <Plug>: Allow users to provide their own key bindings to a unique key which cannot enter from keyboard
  * <Slient>: Silent the output

