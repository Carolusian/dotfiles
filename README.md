# dotfiles

Just keep my dotfiles here

## Installation

You need to clone it to C:\User\<Username>\dotfiles

## Sublime

```sh
$ cd C:\User\<Username>\AppData\Roaming\Sublime Text 3\Packages\User
$ mklink "Package Control.sublime-settings" "C:\User\<Username>\dotfiles\sublime3\Package Control.sublime-settings"
$ mklink "Preferences.sublime-settings" "C:\User\<Username>\dotfiles\sublime3\Preferences.sublime-settings"
```

## Neovim

- See how to setup Python for Neovim: [https://github.com/deoplete-plugins/deoplete-jedi/wiki/Setting-up-Python-for-Neovim]
  - Make sure have `pynvim` and `jedi` installed
- Use `:checkhealth` and `:UpdateRemotePlugins` to debug plugin installations
- Install `fzf` and `Ag` with: `brew install fzf && brew install the_silver_searcher`
- Install `ctags` with: `brew install ctags`
- Install `neovim` for Node.js: `npm i -g neovim`
- Install with `coc.vim` (intellisense-engine): `CocInstall coc-tsserver coc-eslint coc-json coc-prettier coc-css`
  - Coc requires `node` and `yarn`
  - `ln -s ~/dotfiles/coc-settings.json ~/.config/nvim/`
  - `npm i eslint`
  - `eslint --init`
- Useful shortcuts:
  - Python specific:
    - `:Isort`
  - easymotion: `<LEADER><LEADER>w`, `<LEADER><LEADER>b`
  - NERDTree:
    - `go`, `s`, `i`
    - map \<C-o\> :NERDTreeFind\<cr\> (Make NERDTree return current buffer in new tabs)
  - CtrlP: `C+t`, `C+v`, `C+h`, `CtrpPTags`
  - fzf: `:FZF` and `Ag`
  - vim-surround: `cs"'`, `ds"` and `vlllllS'`
  - vim-emmet: `C-y,`, `html:5`
  - tagbar:
    - CR (Jump to tag)
    - p, P (Jump and stay)
    - C-N
    - C-P
    - Space
  - Go to definition: `C-]`, `C-o`, `g]` (Need to wait for ctags generated)
  - folding: `zf5j`, `{visual}zf`, `zfa}`, `zc`, `zo`, `zM`, `zR`, `za`
  - vim splits (Control + Window):
    - `C+ww`, `C+w{hljk}` (move)
    - `:sp` (horizontal)
    - `:vsp` (vertical)
    - `C+w_` (maximise)
    - `C+w=` (Resize equally)
    - `C+w{n}{+-}` (Resize by number of lines)
    - `C+t` (to topleft)
    - `C+w{J|K}` (Move split arround)
  - buffers:
    - `bn`, `bp`
    - `bp|bd #` (delete current buffer without closing window)
    - `sp|b 1` (edit a buffer in split)
  - terminal model: [http://vimcasts.org/episodes/neovim-terminal/]
  - tabs: `:tabedit {file}`
  - moves:
    - `C+d` and `C+u` (Move 1/2 screen)
  - selection
    - `va)` select to closing )
  - save and quit all: `:wqa`
  - reload .vimrc: `:so %` (**so**urce current buffer)
  - registers: `reg`, `"`
  - help: http://vim.wikia.com/wiki/Learn_to_use_help
    - C-], C-T, C-O, C-I
  - normal mode: 
    - :norm
- Key notions:
  - C: Control
  - D: Command
  - S: Shift
  - Leader
  - Plug: Allow users to provide their own key bindings to a unique key which cannot enter from keyboard
  - Slient: Silent the output
- Mapping
  - Modal Mapping: `nmap`, `vmap`, `imap` (NOTE: they are recursive)
  - Nonrecursive Mapping: `nnoremap`
  - <silent>: The key bindings will call the function silently
  - <Plug>: <Plug> is a magic key that is designed to be remapped
- Command: define a command to do sth

### References

- [A guide to modern Web Development with (Neo)vim](https://www.freecodecamp.org/news/a-guide-to-modern-web-development-with-neo-vim-333f7efbf8e2/)
- [Vim for Python in 2020](https://www.vimfromscratch.com/articles/vim-for-python/)
- [At least one vim trick you might not know](https://www.hillelwayne.com/post/intermediate-vim/)

## Doom Emacs (for GNU emacs, use spacemacs if using Mac)

Mainly to use it for the purpose to use Org Mode

### Key binding notion

- `SPC` = `Space`, similar to the function of leader key in Vim
- `RET` = `Return` the Enter
- `C-` = `Ctrl` to invoke commands
- `M-` = `Option/Alt` the meta key, another key to invoke commends. `Meta` is a real physical key on old keyboards
- `S-` = `Shift`

### Layers

| Shortcut | Description |
| -------- | ----------- |
| SPC f    | File        |
| SPC t    | Toggle      |
| SPC w    | Window      |
| SPC b    | Buffer      |
| SPC h    | Help        |

### Org mode

| Shortcut     | Description    |
| ------------ | -------------- |
| M-x org-info | The Org manual |
| SPC m h      | Toggle heading |

### Other userful shortcuts

| Shortcut       | Description              |
| -------------- | ------------------------ |
| S'             | Qutote in visual mode    |
| M-x eval-tutor | Start evil mode tutorial |
| SPC h r r      | Doom Emacs reload        |

### Caveats

- For `Option` key to work as `Meta`, need to update iTerm2 profile to set `Option` to `ESC+`

### References

- Org-mode tutorial:
  - https://www.youtube.com/watch?v=PVsSOmUB7ic
  - Org Mode Basics in Doom Emacs: https://www.youtube.com/watch?v=34zODp_lhqg
  - Boost Productivity With Emacs, Org Mode and Org Agenda: https://www.youtube.com/watch?v=Ea_-TaEGa7Y
- Doom Emacs for Noobs: https://www.youtube.com/watch?v=iab2z21cRqA&t=820s
- Why Emacs uses Meta key: https://catonmat.net/why-emacs-uses-meta-key
- Spacemacs cheatsheet: https://devhints.io/spacemacs
- Pasting images in Org Mode: http://www.enist.org/blog/post/pasting-images-into-org-mode-on-mac/
- Teaches Emacs configuration:
  - https://tecosaur.github.io/emacs-config/config.html
  - https://terrymunro.keybase.pub/

### Tips

When using org-mode, can borrow the templates or structure from how others organization there Notion.so workspace

## spacemacs

### Key binding notion

- `SPC SPC` = meta key
- `,` = major mode leader key, e.g. org-mode, markdown-mode
- `SPC f e d` = update .spacemacs configuration
- `SPC f e R` = to reload the configuration
- `C-h i` = to get help, in the help can use `m` to access menu items

### Customization

- user configuration is set in .spacemacs `defun dotspacemacs/user-config` part

### References

- Org-mode tutorial:
  - spacemacs org-mode tutorial: https://www.youtube.com/watch?v=PVsSOmUB7ic
- OSX Layers: https://www.spacemacs.org/layers/+os/osx/README.html
- Emacs Lisp quick guide: https://github.com/chrisdone/elisp-guide
- Org layer: https://www.spacemacs.org/layers/+emacs/org/README.html
