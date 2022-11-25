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
- Install with `coc.vim` (intellisense-engine): `:CocInstall coc-pyright coc-tsserver coc-eslint coc-json coc-prettier coc-css`
  - `h coc-status`: check statusline integration with coc.nvim
  - `:CocConfig`, `:CocUpdate`, `:CocList extensions`
  - `g:coc_global_extensions` in `vimrc` to auto install those extensions
  - Coc requires `node` and `yarn`
  - `ln -s ~/dotfiles/coc-settings.json ~/.config/nvim/`
  - `npm i eslint`
  - `eslint --init`
  - `:CocLocalConfig` to set project level settings
  - `python.venvPath`: set project virtualenv path
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
  - registers: `reg`, `"{n}[yp]`
  - help: http://vim.wikia.com/wiki/Learn_to_use_help
    - C-], C-T, C-O, C-I
  - normal mode:
    - :norm
  - macro: `q<letter><command>q`, then `@<letter>` to apply, `@@` to apply again
  - multiple line editing: `:norm I"<C+v><esc>$a"`
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
- Recording a macro: `q<letter><commands>q`, `<number>@<letter>`

### References

- [A guide to modern Web Development with (Neo)vim](https://www.freecodecamp.org/news/a-guide-to-modern-web-development-with-neo-vim-333f7efbf8e2/)
- [Vim for Python in 2020](https://www.vimfromscratch.com/articles/vim-for-python/)
- [At least one vim trick you might not know](https://www.hillelwayne.com/post/intermediate-vim/)
- [Use Rust with Neovim](https://oren.github.io/articles/rust/neovim/)
- [Pyright Configuration](https://github.com/microsoft/pyright/blob/main/docs/configuration.md): pyrightconfig.json
- [Recording a macro](https://vim.fandom.com/wiki/Macros)
- [Multiple line editing](https://hassek.github.io/exit-insert-mode-on-a-norm-command-in-vim/)

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
| SPC h    | Help        |
| SPC w    | Window      |
| SPC b    | Buffer      |
| SPC m    | Mode        |
| SPC X    | Capture     |
| g        | Evil mode   |

### Org mode

| Shortcut        | Description      |
| --------------- | ---------------- |
| M-x org-info    | The Org manual   |
| M-x doom/reload | Reload doomemacs |

### Org roam

| Shortcut                  | Description                    |
| ------------------------- | ------------------------------ |
| SPC n r                   | org-roam                       |
| M-x org-id-get-create     | insert orgid properties        |
| M-x org-roam-db-sync      | sync org-roam if file renamed  |
| M-x org-roam-db-clear-all | remove all roam cache entries  |
| SPC w V ENTER             | follow link in separate window |

> Tips:
>
> - org-roam.db is just a cache file located at `~/.emacs.d/.local/cache`, and can be rebuilt when necessary
> - It is not recommended to sync the org-roam.db as absolute paths are used in the db

### Other userful shortcuts

| Shortcut            | Description                              |
| ------------------- | ---------------------------------------- |
| S'                  | Qutote in visual mode                    |
| C-h v               | Help > describe variable                 |
| SPC x               | Popup scratch buffer for lisp evaluation |
| M-x eval-tutor      | Start evil mode tutorial                 |
| M-x doom/reload     | Doom Emacs reload                        |
| SPC h r r           | Doom Emacs reload                        |
| C-x d               | Dired                                    |
| C-c C-x C-i         | Clock in an TODO in logbook              |
| C-0 M-x org-capture | org-capture at current location          |
| M-x customize       | Easy customization                       |

### Caveats

- For `Option` key to work as `Meta`, need to update iTerm2 profile to set `Option` to `ESC+`

### Customizaton

- automatic closed timestamp when item done

```
(setq org-log-done 'time)
;; set to doing when clock-in
(setq org-clock-in-switch-to-state "DOING")
;; Clock Out when done
(setq org-clock-out-when-done t)
```

- customise tags column alignment

```
(after! org
  (setq org-tags-column -80)
   ;; ... other org configuration here
)

```

- use pretty headline bullet list icons

```
;; .doom.d/init.el
(org +pretty)
```

```
(setq
    org-superstar-headline-bullets-list '("⁖" "◉" "○" "✸" "✿")
)
```

- enable dragndrop

```
(org +dragndrop)
```

- Set org-roam directory and org-roam-dailies

```
(after! org
  (setq org-roam-directory "~/secondbrain/org/")
  (setq org-roam-index-file "~/secondbrain/org/index.org")
  ;; For Logseq journals
  (setq org-roam-dailies-directory "journals/")
  ;; use Logseq journals filename convention
  (setq org-roam-dailies-capture-templates
      '(("d" "default" entry
         "* %?"
         :target (file+head "%<%Y_%m_%d>.org"
                            "#+title: %<%Y-%m-%d>\n"))))
)
```

### Useful packages

- `org-journal`
- `org-roam`/ org-roam-ui
- `org-capture`
- `org-babel`
- `org-clock-csv`: `M-x org-clock-csv-to-file`
- `org-cv`
- `cnfonts`: resolve the width issues of Chinese characters
- `chinese`: https://develop.spacemacs.org/layers/+intl/chinese/README.html#description

### References

- [Learn Elisp in Y minutes](https://learnxinyminutes.com/docs/elisp/)
- Org-mode tutorial:
  - https://www.youtube.com/watch?v=PVsSOmUB7ic
  - Org Mode Basics in Doom Emacs: https://www.youtube.com/watch?v=34zODp_lhqg
  - Boost Productivity With Emacs, Org Mode and Org Agenda: https://www.youtube.com/watch?v=Ea_-TaEGa7Y
- Cheatsheets
  - [Good][the ultimate doom emacs cheatsheet](https://naghdbishi.ir/Doom-Emacs-Cheat-Sheet/README.html)
  - [Doom Emacs Cheatsheet](https://gist.github.com/hjertnes/9e14416e8962ff5f03c6b9871945b165)
- [Emacs for writing prose](https://discourse.doomemacs.org/t/emacs-for-writing-prose/515)
- Doom Emacs for Noobs: https://www.youtube.com/watch?v=iab2z21cRqA&t=820s
- Why Emacs uses Meta key: https://catonmat.net/why-emacs-uses-meta-key
- Spacemacs cheatsheet: https://devhints.io/spacemacs
- Pasting images in Org Mode: http://www.enist.org/blog/post/pasting-images-into-org-mode-on-mac/
- Teaches Emacs configuration:
  - https://tecosaur.github.io/emacs-config/config.html https://terrymunro.keybase.pub/
- [Org as a spreadsheet system: a short introduction](https://orgmode.org/worg/org-tutorials/org-spreadsheet-intro.html)
- [The Spreadsheet](https://orgmode.org/manual/The-Spreadsheet.html)
- Sample configurations:
  - [My Doom Emacs configurations](https://hieuphay.com/doom-emacs-config/)
  - [My Doom Emacs configuration, with commentary](https://zzamboni.org/post/my-doom-emacs-configuration-with-commentary/)
  - [Sample doomemacs config](https://github.com/tefkah/doom-emacs-config)
- [DoomEmacs Installing Org-Roam](https://www.reddit.com/r/DoomEmacs/comments/sh7m64/installing_orgroam/)
- [https://www.orgroam.com/manual.html](https://www.orgroam.com/manual.html)
- [Configuring org-roam](https://coredumped.dev/2021/05/26/taking-org-roam-everywhere-with-logseq/)
- [How to rename a note with everything updated at the same time?](https://org-roam.discourse.group/t/how-to-rename-a-note-with-everything-updated-at-the-same-time/300)
- [Adding recurring tasks in Org mode](https://medium.com/@A5anka/adding-recurring-tasks-in-org-mode-c38dfb6374e6)
- Writing:
  - [Emacs for Distraction-Free Writing](https://lucidmanager.org/productivity/emacs-for-distraction-free-writing/)
  - [How to blog with Emacs Org mode](https://opensource.com/article/20/3/blog-emacs)
- Anki:
  - [Power up Anki with Emacs, Org mode, anki-editor and more](https://yiufung.net/post/anki-org/)
- Font:
  - [emacs 使用笔记](https://hsingko.github.io/post/emacs/): (cnfonts + `cnfonts-edit-profile`)
  - [Org-Mode 表格对齐设置](https://manateelazycat.github.io/emacs/2020/04/02/org-font.html)
  - [https://www.skfwe.cn/p/org-mode-basic-in-doom-emacs/]
  - can use homebrew to install required fonts
  - Fira Code + Hiragino Sans GB
- Clock:
  - [The clock table](https://orgmode.org/manual/The-clock-table.html)
- afternoon-theme issue:
  - [Unexpected runtime error running doom cli #6960](https://github.com/doomemacs/doomemacs/issues/6960#issuecomment-1327122489)
  - [(wrong-type-argument stringp nil) error when cloning a package during doom {install,upgrade}](https://github.com/doomemacs/doomemacs/issues/5918)

### Tips

When using org-mode, can borrow the templates or structure from how others organization there Notion.so workspace

Fix afternoon-theme issue: `cd ~/.emacs.d/.local/straight/repos/straight.el && git pull origin develop`

## spacemacs

### Key binding notion

- `SPC SPC` = meta key
- `,` = major mode leader key, e.g. org-mode, markdown-mode
- `SPC f e d` = update .spacemacs configuration
- `SPC f e R` = to reload the configuration
- `C-h i` = to get help, in the help can use `m` to access menu items
- `M-m` = equal to `SPC` in insert mode

### Customization

- user configuration is set in .spacemacs `defun dotspacemacs/user-config` part

- customise TODO keywords

  ```
  (with-eval-after-load 'org
  (setq org-todo-keywords
        '((sequence "TODO" "DOING" "BLOCKED" "REVIEW" "|" "DONE" "ARCHIVED"))))
  ```

  need `M-x org-mode-restart`

- enable `visual-line-mode` by default
  ```
  (with-eval-after-load 'org
    (add-hook 'org-mode-hook #'visual-line-mode))
  ```
  'symbol represents (quote symbol) and #'symbol represents (function symbol) syntactically
- enable `org-babel` languages
  ```
  (org-babel-do-load-languages
    'org-babel-load-languages
    '((emacs-lisp . t)
      (python . t)
      (ledger . t)))
  ```
  `C-c C-c`: execute code block
  `, b`: to trigger babel related commands
- toggle input methods
  `M-x toggle-input-method` or set the following key bindings
  ```
  (spacemacs/declare-prefix "o" "own-menu")
  (spacemacs/set-leader-keys "oi" 'toggle-input-method)
  ```

### References

- Org-mode tutorial:
  - spacemacs org-mode tutorial: https://www.youtube.com/watch?v=PVsSOmUB7ic
  - Major Mode commands: https://www.youtube.com/watch?v=Z8h2nxLnq70
- Templates: give you a standarded structure for particular things or tasks
  - ideas from: https://www.youtube.com/watch?v=uJgv0XQOehs
  - `org-capture`: http://www.howardism.org/Technical/Emacs/capturing-intro.html
- OSX Layers: https://www.spacemacs.org/layers/+os/osx/README.html
- Emacs Lisp quick guide: https://github.com/chrisdone/elisp-guide
- Org layer: https://www.spacemacs.org/layers/+emacs/org/README.html
- Implementing A Second Brain in Emacs and Org-Mode: https://tasshin.com/blog/implementing-a-second-brain-in-emacs-and-org-mode/
- How to config spacemacs: https://www.youtube.com/watch?v=2P-hEtTlJIA&amp%3Bfeature=share
- A practical guide to spacemacs: https://practicalli.github.io/spacemacs/org-mode/todo-states.html

## vscode

- `cmd + shift + p`: command palette
- `cmd+p`: like ctrl-p plugin in vim
- `cmd + shift + e`: move between explorer and file editor tab
- `cmd + shift + o`: navigate outline
- `cmd + ` tab number: to switch between tabs

### Tips

- you can sync with vscode settings using its built sync feature using github login

### References

- [15 Visual Studio Code Shortcuts You Should Know](https://medium.com/swlh/15-visual-studio-code-shortcuts-you-should-know-ea1b4166f69f)
- [Useful VS Code keyboard shortcuts](https://zellwk.com/blog/useful-vscode-keyboard-shortcuts/)

## cli tools

### References

- [iterms2 Solarized Dark theme](https://gist.github.com/leymannx/598e0e92722f47cfb31daa7cf9f9a817): I personally prefer boxfish theme
- [My Favorite CLI Tools](https://switowski.com/blog/favorite-cli-tools)

## Logseq

### Tips

- org-mode: can use `_` instead of `-` in filenames in emacs for consistent file naming
- org-mode file links can be enabled
- can select org as default file format
