;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs

   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused

   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t

   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()

   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   `(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
     ;; `M-m f e R' (Emacs style) to install them.
     ;; ----------------------------------------------------------------

     ;; csv
     (auto-completion
      :variables
      auto-completion-enable-snippets-in-popup t
      auto-completion-enable-help-tooltip t
      auto-completion-enable-sort-by-usage t
      )
     emacs-lisp
     (ivy :variables
          ivy-enable-advanced-buffer-information t
          ivy-rich-path-style 'abbrev)
     git
     markdown
     (org :variables
          org-enable-bootstrap-support t
          org-enable-reveal-js-support t
          org-enable-github-support t
          org-enable-hugo-support t
          )
     ;; go
     (shell :variables
            shell-default-height 30
            shell-default-position 'bottom)
     (latex :variables
            ;; latex-build-command "XeLaTeX"
            latex-enable-auto-fill nil
            latex-enable-folding t)
     (python :variables:
             ;; enable YAPF formating
             python-enable-yapf-format-on-save t)
     (c-c++ :variables
           c-c++-default-mode-for-headers 'c++-mode)
     ,(if (or (string= system-name "carbon")
              (string= system-name "myhost"))
          '(chinese :variables
                    chinese-enable-fcitx t
                    chinese-enable-youdao-dict t)
        '(chinese :variables
                  chinese-enable-youdao-dict t))
     ;; (chinese :variables
     ;;          ;; chinese-enable-fcitx t
     ;;          chinese-enable-youdao-dict t)
     (ibuffer :variables
              ibuffer-group-buffers-by 'projects)
     html
     javascript
     shell-scripts
     (spell-checking :variables spell-checking-enable-by-default nil)
     (syntax-checking :variables syntax-checking-use-original-bitmaps t)
     version-control
     pdf-tools
     semantic
     gtags
     ;; show the current buffer’s index in a side bar
     imenu-list
     search-engine
     ;; the layer for R
     ;; ess
     ranger ;; replacement for dired
     nlinum ;; fast replacement for linum mode
     rust
     (colors :variables colors-colorize-identifiers 'variable) ;; include rainbow-mode
     )

   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   ;; To use a local version of a package, use the `:location' property:
   ;; '(your-package :location "~/path/to/your-package/")
   ;; Also include the dependencies as they will not be resolved automatically.
   dotspacemacs-additional-packages '(vimrc-mode
                                      ;; (tbemail
                                      ;;  :location local)
                                      flyspell-lazy
                                      cnfonts
                                      atomic-chrome
                                      ;; explicitly add ivy-rich for master branch
                                      ivy-rich
                                      company-jedi ;; add jedi-support
                                      org-pdfview ;; add pdfview link to org
                                      org-gcal ;; sync calendar with google calendar
                                      cal-china-x
                                      (eterm-256color ;; uses github version, since melpa
                                                      ;; version has some problem
                                       :location
                                       (recipe :fetcher github
                                               :repo "dieggsy/eterm-256color"))
                                      )
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()

   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '(google-c-style
                                    nyan-mode
                                    )
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and deletes any unused
   ;; packages as well as their unused dependencies. `used-but-keep-unused'
   ;; installs only the used packages but won't delete unused ones. `all'
   ;; installs *all* packages supported by Spacemacs and never uninstalls them.
   ;; (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t

   ;; Maximum allowed time in seconds to contact an ELPA repository.
   ;; (default 5)
   dotspacemacs-elpa-timeout 5

   ;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
   ;; This is an advanced option and should not be changed unless you suspect
   ;; performance issues due to garbage collection operations.
   ;; (default '(100000000 0.1))
   dotspacemacs-gc-cons '(100000000 0.1)

   ;; If non-nil then Spacelpa repository is the primary source to install
   ;; a locked version of packages. If nil then Spacemacs will install the
   ;; latest version of packages from MELPA. (default nil)
   dotspacemacs-use-spacelpa nil

   ;; If non-nil then verify the signature for downloaded Spacelpa archives.
   ;; (default nil)
   dotspacemacs-verify-spacelpa-archives nil

   ;; If non-nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil

   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'. (default 'emacs-version)
   dotspacemacs-elpa-subdirectory 'emacs-version

   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim

   ;; If non-nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil

   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official

   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'.
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))

   ;; True if the home buffer should respond to resize events. (default t)
   dotspacemacs-startup-buffer-responsive t

   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'emacs-lisp-mode

   ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
   ;; (default nil)
   dotspacemacs-initial-scratch-message nil

   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press `SPC T n' to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(spacemacs-dark
                         spacemacs-light)

   ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
   ;; `all-the-icons', `custom', `vim-powerline' and `vanilla'. The first three
   ;; are spaceline themes. `vanilla' is default Emacs mode-line. `custom' is a
   ;; user defined themes, refer to the DOCUMENTATION.org for more info on how
   ;; to create your own spaceline theme. Value can be a symbol or list with\
   ;; additional properties.
   ;; (default '(spacemacs :separator wave :separator-scale 1.5))
   dotspacemacs-mode-line-theme '(spacemacs :separator wave :separator-scale 1.5)

   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   ;; (default t)
   dotspacemacs-colorize-cursor-according-to-state t

   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font `(
                               "DejaVu Sans Mono"
                               :size ,(if (string= system-name "carbon")
                                          21 14)
                               :weight normal
                               :width normal
                               :powerline-scale 1.6
                               "思源黑体 CN"
                               )
   ;; The leader key (default "SPC")
   dotspacemacs-leader-key "SPC"

   ;; The key used for Emacs commands `M-x' (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"

   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"

   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"

   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","

   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"

   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
   ;; Setting it to a non-nil value, allows for separate commands under `C-i'
   ;; and TAB or `C-m' and `RET'.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil

   ;; If non-nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ t

   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t

   ;; If non-nil, `J' and `K' move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil

   ;; If non-nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil

   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"

   ;; If non-nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil

   ;; If non-nil then the last auto saved layouts are resumed automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil

   ;; If non-nil, auto-generate layout name when creating new layouts. Only has
   ;; effect when using the "jump to layout by number" commands. (default nil)
   dotspacemacs-auto-generate-layout-names nil

   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1

   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache

   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5

   ;; If non-nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil

   ;; if non-nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil

   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom

   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always

   ;; If non-nil, the paste transient-state is enabled. While enabled, pressing
   ;; `p' several times cycles through the elements in the `kill-ring'.
   ;; (default nil)
   dotspacemacs-enable-paste-transient-state nil

   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4

   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom

   ;; Control where `switch-to-buffer' displays the buffer. If nil,
   ;; `switch-to-buffer' displays the buffer in the current window even if
   ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
   ;; displays the buffer in a same-purpose window even if the buffer can be
   ;; displayed in the current window. (default nil)
   dotspacemacs-switch-to-buffer-prefers-purpose nil

   ;; If non-nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t

   ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil

   ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil

   ;; If non-nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90

   ;; If non-nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t

   ;; If non-nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t

   ;; If non-nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t

   ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t

   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers nil

   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil

   ;; If non-nil `smartparens-strict-mode' will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil

   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil

   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all

   ;; If non-nil, start an Emacs server if one is not already running.
   dotspacemacs-enable-server t

   ;; If non-nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server t

   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
   ;; (default '("rg" "ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")

   ;; Format specification for setting the frame title.
   ;; %a - the `abbreviated-file-name', or `buffer-name'
   ;; %t - `projectile-project-name'
   ;; %I - `invocation-name'
   ;; %S - `system-name'
   ;; %U - contents of $USER
   ;; %b - buffer name
   ;; %f - visited file name
   ;; %F - frame name
   ;; %s - process status
   ;; %p - percent of buffer above top of window, or Top, Bot or All
   ;; %P - percent of buffer above bottom of window, perhaps plus Top, or Bot or All
   ;; %m - mode name
   ;; %n - Narrow if appropriate
   ;; %z - mnemonics of buffer, terminal, and keyboard coding systems
   ;; %Z - like %z, but including the end-of-line format
   ;; (default "%I@%S")
   dotspacemacs-frame-title-format "%I@%S"

   ;; Format specification for setting the icon title format
   ;; (default nil - same as frame-title-format)
   dotspacemacs-icon-title-format nil

   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed' to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil

   ;; Either nil or a number of seconds. If non-nil zone out after the specified
   ;; number of seconds. (default nil)
   dotspacemacs-zone-out-when-idle nil

   ;; Run `spacemacs/prettify-org-buffer' when
   ;; visiting README.org files of Spacemacs.
   ;; (default nil)
   dotspacemacs-pretty-docs nil))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  (setq-default git-magit-status-fullscreen t)
  ;; use tuna mirror
  ;; (setq configuration-layer--elpa-archives
  ;;   '(("melpa-cn" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
  ;;     ("org-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
  ;;     ("gnu-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")))

  (setq flyspell-issue-welcome-flag nil) ;; fix flyspell problem
  (setq ispell-dictionary "american")
  (setq mine-machine-specific-config
        (concat "~/.machine_specific/"
                system-name
                "/config.el"))
  (load mine-machine-specific-config 'noerror)
  (setq custom-file "~/.emacs.d/private/temp.el")
  (load custom-file 'noerror)
  (load "~/.emacs.d/private/credentials.el" 'noerror)
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  ;; (spacemacs/toggle-truncate-lines-on)
  (global-git-commit-mode t)
  ;; (add-hook 'text-mode-hook 'spacemacs/toggle-visual-line-navigation-on)
  (setq undo-tree-auto-save-history t)
  ;; to allow cursor move beyond eol, and do not move back.
  (setq evil-move-beyond-eol t
        evil-move-cursor-back nil)
  ;; (defadvice preceding-sexp (around evil)
  ;;   "In normal-state, last sexp ends at point."
  ;;   (if (evil-normal-state-p)
  ;;       (save-excursion
  ;;         (unless (or (eobp) (eolp)) (forward-char))
  ;;         ad-do-it)
  ;;     ad-do-it))
  ;; (defadvice pp-last-sexp (around evil)
  ;;   "In normal-state, last sexp ends at point."
  ;;   (if (evil-normal-state-p)
  ;;       (save-excursion
  ;;         (unless (or (eobp) (eolp)) (forward-char))
  ;;         ad-do-it)
  ;;     ad-do-it))
  ;; to search across line breaks
  (setq isearch-lax-whitespace t)
  (setq isearch-regexp-lax-whitespace t)
  ;; (setq search-whitespace-regexp "\\s-+")
  (setq search-whitespace-regexp "[ \t\r\n]+")

  (defengine dictcn
    "http://dict.cn/%s"
    :docstring "Search Dict.cn")

  ;; check if the port for atomic-chrome is used or not
  ;; copied from https://github.com/dakrone/atomic-chrome/commit/79a5c17eef37b1e41590fc366cd16f2c4f3d46e4
  ;; append yang to avoid messing up with naming space
  (defun yang-atomic-chrome-server-running-p ()
   "Returns `t' if the atomic-chrome server is currently running,
 `nil' otherwise."
   (let ((retval nil))
     (condition-case ex
         (progn
           (delete-process
            (make-network-process
             :name "atomic-client-test" :host "localhost"
             :noquery t :service "64292"))
           (setq retval t))
       ('error nil))
     retval))
  ;; turn on atomic-chrome
  (unless (yang-atomic-chrome-server-running-p)
    (atomic-chrome-start-server))


  (add-to-list 'auto-mode-alist
               '("\\.eml\\'" . (lambda ()
                                 ;; will add something special
                                 (markdown-mode)
                                 )))

  ;; set tab-width
  (setq-default tab-width 8)
  (setq-default c-basic-offset 4)
  (setq-default python-indent 4)

  (use-package ranger
    :bind (:map ranger-mode-map
                ("C-h" . nil)) ;; C-h was set to toggle dotfiles
    :config
    (progn
      (setq ranger-show-dotfiles nil ;; default not show dotfiles at startup, toggled by zh
            ranger-cleanup-on-disable t ;; kill the buffers when we finish
            )))

  ;; turn off linum-mode for performance
  (global-linum-mode -1)
  ;; scale the result from latex-preview, should be 2 in hidpi,
  ;; 1.2 in normal dpi
  ;; (set-default 'preview-scale-function 1.2)
  ;; (set-default 'preview-scale-function 2)
  (add-hook 'doc-view-mode-hook 'auto-revert-mode)
  ;; Ergonomic keybinding M-<hjkl>
  (mapc (lambda (keymap)
          ;; Normal-mode, hjkl
          (define-key keymap (kbd "M-h") 'evil-backward-char)
          (define-key keymap (kbd "M-l") 'evil-forward-char)
          (define-key keymap (kbd "M-k") 'evil-previous-visual-line)
          (define-key keymap (kbd "M-j") 'evil-next-visual-line)

          ;; Move to beginning/ending of line
          (define-key keymap (kbd "M-H") 'move-beginning-of-line)
          (define-key keymap (kbd "M-L") 'move-end-of-line)
          (define-key keymap (kbd "C-a") 'move-beginning-of-line)
          (define-key keymap (kbd "C-e") 'move-end-of-line)
          ;; Scroll up/down
          (define-key keymap (kbd "M-J") 'evil-scroll-down)
          (define-key keymap (kbd "M-K") 'evil-scroll-up)
          ;; delete-char
          (define-key keymap (kbd "C-d") 'delete-char)
          )
        `(,evil-insert-state-map
          ,evil-normal-state-map))

  ;; fix some keybinding problems
  ;; fix for js2-mode
  (use-package js2-mode
    :bind (:map js2-mode-map
                ("M-j" . nil)))


  ;; wrap in with-eval-after-load, see
  ;; http://spacemacs.org/layers/+emacs/org/README.html#important-note
  (with-eval-after-load 'org
    (setq
     ;; place tags directly after headline text, with only one space in between
     org-tags-column 0
     org-startup-truncated nil
     org-todo-keywords
     '((sequence "TODO(t)" "PUSHED(p)" "WAIT(w@/!)" "|" "DONE(d!)")
       (sequence "|" "CANCLED(c@)"))
     org-startup-truncated nil
     )
    (org-add-link-type
     "span" #'ignore ; not an 'openable' link
     #'(lambda (class desc format)
         (pcase format
           (`html (format "<span class=\"%s\">%s</span>"
                          (jw/html-escape-attribute class)
                          (or desc "")))
           (_ (or desc "")))))
    (add-hook 'evil-org-mode-hook
              (lambda ()
                (mapc (lambda (state)
                        (evil-define-key state evil-org-mode-map
                          (kbd "M-h") nil
                          (kbd "M-j") nil
                          (kbd "M-k") nil
                          (kbd "M-l") nil
                          (kbd "M-H") nil
                          (kbd "M-J") nil
                          (kbd "M-K") nil
                          (kbd "M-L") nil
                          ;; actually unset all the following
                          ;; (kbd "M-h") 'org-metaleft
                          ;; (kbd "M-j") 'org-metadown
                          ;; (kbd "M-k") 'org-metaup
                          ;; (kbd "M-l") 'org-metaright
                          ;; (kbd "M-H") 'org-shiftmetaleft
                          ;; (kbd "M-J") 'org-shiftmetadown
                          ;; (kbd "M-K") 'org-shiftmetaup
                          ;; (kbd "M-L") 'org-shiftmetaright
                          ))
                      '(normal insert))))
    ;; actually insert space with pangu-spacing for org-mode, to fix indentation
    ;; in table
    (set (make-local-variable 'pangu-spacing-real-insert-separtor) t)
    (add-to-list 'org-babel-load-languages '(latex . t))
    )

  (defun jw/html-escape-attribute (value)
    "Entity-escape VALUE and wrap it in quotes."
    ;; http://www.w3.org/TR/2009/WD-html5-20090212/serializing-html-fragments.html
    ;;
    ;; "Escaping a string... consists of replacing any occurrences of
    ;; the "&" character by the string "&amp;", any occurrences of the
    ;; U+00A0 NO-BREAK SPACE character by the string "&nbsp;", and, if
    ;; the algorithm was invoked in the attribute mode, any occurrences
    ;; of the """ character by the string "&quot;"..."
    (let* ((value (replace-regexp-in-string "&" "&amp;" value))
           (value (replace-regexp-in-string "\u00a0" "&nbsp;" value))
           (value (replace-regexp-in-string "\"" "&quot;" value)))
      value))

  ;; turn on golden-ratio mode
  ;; (spacemacs/toggle-golden-ratio-on)

  ;; stop the behavior that evil consider all inputs done when in insert mode
  ;; as one insertion.
  (setq evil-want-fine-undo t)

  ;; turn on highlight-current-line-globally
  (spacemacs/toggle-highlight-current-line-globally-on)

  ;; use 24hr format
  (setq display-time-24hr-format t)

  (setq use-default-font-for-symbols nil)

  ;; set up mono font for chinese
  (use-package cnfonts
    :init (setq
           cnfonts--current-profile "profile1"
           cnfonts--profiles-steps '(("profile1" . 1))
           cnfonts-directory "~/.emacs.d/private/chinese-fonts-setup/"
           cnfonts-personal-fontnames '(nil ("思源黑体 CN"))))

  ;; set char width for certain characters
  (defun blaenk/set-char-widths (alist)
    (while (char-table-parent char-width-table)
      (setq char-width-table (char-table-parent char-width-table)))
    (dolist (pair alist)
      (let ((width (car pair))
            (chars (cdr pair))
            (table (make-char-table nil)))
        (dolist (char chars)
          (set-char-table-range table char width))
        (optimize-char-table table)
        (set-char-table-parent table char-width-table)
        (setq char-width-table table))))

  ;; fix char width
  (blaenk/set-char-widths
   `((1 . (,(string-to-char "“")
           ,(string-to-char "”")
           ,(string-to-char "…")
           ))))

  (defun my-after-frame-function ()
    (message "in my-after-frame-function")
    ;; 让 chinese-fonts-setup 随着 emacs 自动生效。
    (cnfonts-enable)
    ;; 让 spacemacs mode-line 中的 Unicode 图标正确显示。
    (cnfonts-set-spacemacs-fallback-fonts)
    ;; (when window-system (set-frame-size (selected-frame) 120 48))
    )

  (defun my-reload-fonts (plist)
    (message "in new my-after-frame-function")
    (cnfonts-set-font-with-saved-step)
    )

  (my-after-frame-function)

  ;; (add-hook 'after-make-frame-functions
  ;;           '(lambda (f)
  ;;              (my-after-frame-function)
  ;;              ))
  ;; (add-hook 'window-setup-hook
  ;;           'my-after-frame-function)
  (add-function :after (symbol-function 'spacemacs/set-default-font) #'my-reload-fonts)

  (use-package flyspell-lazy
    :ensure t
    :init (setq flyspell-lazy-extra-lazy t)
    :config (flyspell-lazy-mode 1))

  (setq-default search-invisible t)

  (setq-default evil-search-module "isearch")

  ;; initial window
  (setq initial-frame-alist
        '(
          (width . 100) ; character
          (height . 54) ; lines
          ))

  ;; default/sebsequent window
  (setq default-frame-alist
        '(
          (width . 100) ; character
          (height . 52) ; lines
          ))

  ;; LaTeX hook
  (add-hook 'LaTeX-mode-hook
            (lambda ()
              (turn-on-reftex)
              (add-to-list 'TeX-command-list '
                           ("XeLaTeX" "%`xelatex%(mode)%' %t" TeX-run-TeX nil t))
              (setq TeX-auto-save t)
              (LaTeX-math-mode)
              (imenu-add-menubar-index)
              ;; (setq LaTeX-command-style
              ;;       (quote (("\\`fontspec\\'" "xelatex ")
              ;;               ("" "%(PDF)%(latex) %S%(PDFout)"))))
              ;; (custom-set-variables
              ;;     '(preview-fast-dvips-command "pdftops -origpagesizes %s.pdf %m/preview.ps"))
              (setq TeX-save-query nil)
              (setq TeX-parse-self t)
              (setq TeX-output-view-style
                    (cons '("^pdf$" "." "evince  %o ") TeX-output-view-style))
              ;; (set-default 'preview-default-document-pt 12)
              ;; (set-default 'preview-scale-function 1.2)
              ;; (setq preview-required-option-list
              ;; 	  (quote ("active" "tightpage" "auctex" "xetex" (preview-preserve-counters "counters"))))
              (setq preview-default-option-list
                    (quote ("displaymath" "floats" "graphics" "textmath" "showlabels" "sectio" )))
              (TeX-global-PDF-mode t)
              ;; (TeX-fold-mode t)         ; already enabled in config
              (TeX-engine-set "default")
              (LaTeX-add-environments
               "definition"
               "example"
               "tikzpicture"
               "corallary"
               "align*"
               "theorem"
               "proof"
               "lemma"
               ;; '("tikzpicture" LaTeX-env-tikz)
               )
              ;; enable TeX-fold-buffer
              (add-hook 'find-file-hook 'TeX-fold-buffer t t)
              (setq preview-auto-cache-preamble t)
              (rainbow-delimiters-mode-enable)
              ;; (turn-off-auto-fill)
              ))
  (add-hook 'magit-diff-mode-hook
            (lambda ()
              (visual-line-mode 1)))
  (add-hook 'magit-status-mode-hook
            (lambda ()
              (visual-line-mode 1)))
  (use-package ivy-rich
    :config (progn
              (ivy-set-display-transformer 'ivy-switch-buffer 'ivy-rich-switch-buffer-transformer)
              (setq ivy-virtual-abbreviate 'full
                    ivy-rich-switch-buffer-align-virtual-buffer t
                    ivy-rich-path-style 'abbrev)))

  ;; bug fix for python-mode
  (setq python-shell-native-complete nil)
  (use-package company-jedi             ;;; company-mode completion back-end for Python JEDI
    :ensure t
    :config
    (add-hook 'python-mode-hook 'jedi:setup)
    (setq jedi:complete-on-dot t)
    (setq jedi:use-shortcuts t)
    (defun config/enable-company-jedi ()
      (add-to-list 'company-backends 'company-jedi))
    (add-hook 'python-mode-hook 'config/enable-company-jedi))


  ;; dired mode
  ;; (add-to-list 'dired-omit-extensions ".~undo-tree~")

  ;; doc-view
  (use-package doc-view
    :config (setq doc-view-resolution 144)
    :bind (:map doc-view-mode-map
                ("h" . image-backward-hscroll)
                ("l" . image-forward-hscroll)
                ("J" . doc-view-next-page)
                ("K" . 'doc-view-previous-page)
                ))

  ;; copied from http://pragmaticemacs.com/emacs/even-more-pdf-tools-tweaks/
  (use-package pdf-tools
    :ensure t
    :bind (:map pdf-view-mode-map
                ("C-s" . isearch-forward))
    :config
    (setq-default pdf-view-display-size 'fit-page)
    ;; automatically annotate highlights
    (setq pdf-annot-activate-created-annotations t)
    ;; more fine-grained zooming
    (setq pdf-view-resize-factor 1.1)
    )

  (use-package org-pdfview
    :ensure t
    :after (org)
    :config
    (add-to-list 'org-file-apps '("\\.pdf\\'" . (lambda (file link) (org-pdfview-open link))))
    (add-hook
     'pdf-view-mode-hook
     (lambda ()
       (pdf-view-set-slice-from-bounding-box)
       (pdf-view-fit-width-to-window)))
    )

  ;; move most custom variables here
  (setq
   delete-by-moving-to-trash t
   evil-ex-interactive-search-highlight nil
   evil-want-Y-yank-to-eol t
   mouse-yank-at-point t
   ispell-extra-args '("--sug-mode=ultra")
   magit-diff-refine-hunk 'all
   org-M-RET-may-split-line '((default))
   paradox-automatically-star nil
   ;; preview-default-option-list '("displaymath"
   ;;                               "floats"
   ;;                               "graphics"
   ;;                               "textmath"
   ;;                               "sections"
   ;;                               "showlabels"
   ;;                               "sectio") ; seems broken
   ;; preview-gs-options '("-q" "-dDELAYSAFER" "-dNOPAUSE" "-DNOPLATFONTS" "-dPrinted" "-dTextAlphaBits=4" "-dGraphicsAlphaBits=4") ; seems the same as default
   term-buffer-maximum-size 10000
   word-wrap nil
   )

  (cond ((string-equal system-name "carbon") ; thinkpad X1 carbon
         (progn
           (with-eval-after-load 'org
             (plist-put org-format-latex-options :scale 2.0))
           (setq
            preview-scale-function 2)
           ;; for GUI called by emacs
           (setenv "GDK_SCALE" "2")
           (setenv "GDK_DPI_SCALE" "0.5")
           )))

  (with-eval-after-load 'web-mode
    (setq
     web-mode-enable-auto-closing t
     web-mode-enable-auto-indentation t
     web-mode-enable-auto-opening t
     web-mode-enable-auto-pairing t
     web-mode-enable-auto-quoting t
     web-mode-enable-css-colorization t
     ;; remove emmet from company-mode backends in web-mode
     company-web-html-emmet-enable nil
     company-minimum-prefix-length 2
     )
    (defun try-emmet-expand-line (args)
      (interactive "P")
      (when emmet-mode
        (emmet-expand-line args)))
    ;; add emmet to hippie-expand backends
    (add-to-list 'hippie-expand-try-functions-list
                 'try-emmet-expand-line)
    )

  ;; dired
  (with-eval-after-load 'dired
    (defun yang-dired-mode-setup ()
      "to be run as hook for `dired-mode'."
      (dired-hide-details-mode 1))
    (add-hook 'dired-mode-hook 'yang-dired-mode-setup)

    ;; use RET to open dir in same buffer
    (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file) ; was dired-find-file
    (define-key dired-mode-map (kbd "^") (lambda () (interactive) (find-alternate-file "..")))  ; was dired-up-directory

    (setq dired-recursive-copies 'always)
    )

  (use-package dired-x
    :config
    (progn
      (add-to-list 'dired-omit-extensions ".~undo-tree~")
      (setq-default dired-omit-mode t)))

  (when (string= system-name "carbon")
    (use-package org-gcal
      :init
      (setq org-gcal-dir "~/.emacs.d/private/org-gcal/")
      :config
      (setq
       org-gcal-file-alist '(("yangsheng6810@gmail.com" .  "~/Documents/org/gcal.org")))
      ;; (add-hook 'org-agenda-mode-hook (lambda () (org-gcal-sync)))
      ;; (add-hook 'org-capture-after-finalize-hook (lambda () (org-gcal-sync) ))
      )
    )

  (global-unset-key (kbd "M-SPC"))
  (global-set-key (kbd "M-SPC") 'set-mark-command)

  (use-package ace-pinyin
    :config
    (setq ace-pinyin--jump-word-timeout 0.8)
    (spacemacs/set-leader-keys "j j" 'ace-pinyin-jump-word)
    )

  (add-hook 'prog-mode-hook 'rainbow-mode)

  ;; need to first remove mode from spacemacs--diminished-minor-modes
  (mapcar '(lambda (mode)
             (spacemacs/diminish-undo mode)
             (diminish mode))
          '(which-key-mode
            smartparens-mode
            company-mode
            ))

  ;; Nicer completion for eshell
  ;; From https://emacs.stackexchange.com/a/27871
  ;; Also we have to put it into shell, because eshell resets eshell-mode-map
  ;; when initialized
  (add-hook 'eshell-mode-hook
            (lambda ()
              ;; some alias
              (eshell/alias "ee" "find-file $1")
              (eshell/alias "ff" "find-file $1")
              (eshell/alias "d" "dired $1")
              ;; git status
              (defun eshell/gst (&rest args)
                (magit-status (pop args) nil)
                (eshell/echo))   ;; The echo command suppresses output
              ;; define clear
              (defun eshell/clear ()
                "Clear the eshell buffer."
                (let ((inhibit-read-only t))
                  (erase-buffer)
                  (eshell-send-input)))
              (define-key eshell-mode-map (kbd "<tab>")
                (lambda () (interactive) (pcomplete-std-complete)))))

  (use-package eterm-256color
    :config
    (add-hook 'term-mode-hook #'eterm-256color-mode))

  ;; enable chinese lunar anniversary
  (use-package cal-china
    :config
    (defun my--diary-chinese-anniversary (lunar-month lunar-day &optional year mark)
      (if year
          (let* ((d-date (diary-make-date lunar-month lunar-day year))
                 (a-date (calendar-absolute-from-gregorian d-date))
                 (c-date (calendar-chinese-from-absolute a-date))
                 (cycle (car c-date))
                 (yy (cadr c-date))
                 (y (+ (* 100 cycle) yy)))
            (diary-chinese-anniversary lunar-month lunar-day y mark))
        (diary-chinese-anniversary lunar-month lunar-day year mark)))
    )

  ;; (load custom-file)

  ;; fix problem with open-junk-file
  (defun remove-helm-functions ()
    (remove-hook 'post-command-hook 'helm--maybe-update-keymap)
    ;; 2015-07-01 The following function was also remaining in the hook.
    ;; This hook was added 14 days ago coinciding breakage.
    ;; https://github.com/emacs-helm/helm/commit/ff7c54d39501d894fdb06e049828b291327540e6
    (remove-hook 'post-command-hook 'helm--update-header-line))

  (setq eshell-cmpl-cycle-completions nil)

  (setq diary-file "~/.emacs.d/private/diary")

  ;;
  ;; 2015-07-01
  ;; This function itself is not remaining in the post-command-hook?
  ;;
  ;; Candidate hooks for making this happen.
  ;; server-done-hook	Hook run when done editing a buffer for the Emacs server.
  ;; server-mode-hook	Hook run after entering or leaving `server-mode'.
  ;; server-switch-hook	Hook run when switching to a buffer for the Emacs server.
  ;; server-visit-hook	Hook run when visiting a file for the Emacs server.
  ;;
  ;; (add-hook 'server-done-hook   'remove-helm--maybe-update-keymap)
  ;; (add-hook 'server-mode-hook   'remove-helm--maybe-update-keymap)
  ;; (add-hook 'server-switch-hook 'remove-helm--maybe-update-keymap)
  ;; (add-hook 'server-visit-hook  'remove-helm--maybe-update-keymap)
  ;;
  ;; This hacky universal solution works.
  ;; http://www.gnu.org/software/emacs/manual/html_node/elisp/Command-Overview.html#Command-Overview
  ;; (add-hook 'post-command-hook 'remove-helm-functions)
  ;; 2015-07-01 Changed to the following.
  (add-hook 'pre-command-hook 'remove-helm-functions)
  ;; modeline optimization/workarounds
  ;; (spaceline-toggle-purpose-off)
  (spacemacs/toggle-mode-line-responsive-off)
)

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
)
