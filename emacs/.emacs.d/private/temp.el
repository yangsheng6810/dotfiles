(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cnfonts--current-profile "profile1" t)
 '(cnfonts--profiles-steps (quote (("profile1" . 1))) t)
 '(cnfonts-directory "~/.emacs.d/private/chinese-fonts-setup/")
 '(cnfonts-personal-fontnames (quote (nil ("思源黑体 CN"))))
 '(delete-by-moving-to-trash t)
 '(dired-omit-extensions
   (quote
    (".o" "~" ".bin" ".lbin" ".so" ".a" ".ln" ".blg" ".bbl" ".elc" ".lof" ".glo" ".idx" ".lot" ".svn/" ".hg/" ".git/" ".bzr/" "CVS/" "_darcs/" "_MTN/" ".fmt" ".tfm" ".class" ".fas" ".lib" ".mem" ".x86f" ".sparcf" ".dfsl" ".pfsl" ".d64fsl" ".p64fsl" ".lx64fsl" ".lx32fsl" ".dx64fsl" ".dx32fsl" ".fx64fsl" ".fx32fsl" ".sx64fsl" ".sx32fsl" ".wx64fsl" ".wx32fsl" ".fasl" ".ufsl" ".fsl" ".dxl" ".lo" ".la" ".gmo" ".mo" ".toc" ".aux" ".cp" ".fn" ".ky" ".pg" ".tp" ".vr" ".cps" ".fns" ".kys" ".pgs" ".tps" ".vrs" ".pyc" ".pyo" ".idx" ".lof" ".lot" ".glo" ".blg" ".bbl" ".cp" ".cps" ".fn" ".fns" ".ky" ".kys" ".pg" ".pgs" ".tp" ".tps" ".vr" ".vrs" ".~undo-tree~")))
 '(dired-recursive-copies (quote always))
 '(doc-view-resolution 144)
 '(evil-ex-interactive-search-highlight nil)
 '(evil-want-Y-yank-to-eol t)
 '(flyspell-lazy-extra-lazy t)
 '(ispell-extra-args (quote ("--sug-mode=ultra")))
 '(magit-diff-refine-hunk (quote all))
 '(org-M-RET-may-split-line (quote ((default))))
 '(org-agenda-files
   (quote
    ("~/Documents/Diary/2017/07/2017-07-18.org" "~/Documents/Diary/2017/07/2017-07-09.org" "~/Documents/Diary/2017/07/2017-07-02.org" "~/Documents/Diary/2017/07/2017-07-07.org" "~/Documents/Diary/2017/07/2017-07-06.org" "~/Documents/Diary/2017/07/2017-07-04.org")))
 '(org-capture-templates
   (quote
    (("n" "Notes" entry
      (file+datetree+prompt "~/Documents/org/Notes.org")
      "")
     ("r" "Research" entry
      (file+datetree "~/Documents/org/Research.org")
      "" :prepend t)
     ("e" "Emacs" entry
      (file+headline "~/Documents/org/Computer.org" "Emacs")
      "* %?
%T")
     ("l" "Linux" entry
      (file+headline "~/Documents/org/Computer.org" "Linux")
      "* %?
%t")
     ("s" "Exercise" entry
      (file+datetree+prompt "~/Documents/org/Exercise.org")
      ""))))
 '(org-format-latex-options
   (quote
    (:foreground default :background default :scale 2.0 :html-foreground "Black" :html-background "Transparent" :html-scale 1.0 :matchers
                 ("begin" "$1" "$" "$$" "\\(" "\\["))))
 '(package-selected-packages
   (quote
    (org-brain centered-cursor-mode godoctor go-tag go-rename go-guru go-eldoc company-go go-mode csv-mode yasnippet-snippets org-mime orgit org-present ivy-rtags flycheck-rtags company-rtags spaceline-all-the-icons all-the-icons memoize font-lock+ pippel overseer nameless importmagic epc concurrent deferred google-c-style evil-cleverparens paredit counsel-gtags counsel-css rtags cnfonts names chinese-word-at-point winum symon string-inflection powerline request spinner org-category-capture alert log4e gntp mmm-mode markdown-toc markdown-mode json-snatcher json-reformat multiple-cursors js2-mode dired+ ess-R-data-view ctable ess julia-mode pyim pyim-basedict password-generator impatient-mode flycheck-bashate evil-org evil-lion editorconfig cmake-ide levenshtein wgrep smex ivy-purpose ivy-hydra flyspell-correct-ivy counsel-projectile counsel swiper ivy realgud test-simple loc-changes load-relative flyspell-lazy ox-reveal ag bookmark+ git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ with-editor dash git-gutter diff-hl insert-shebang hide-comnt helm-purpose window-purpose keyfreq pug-mode imenu-list engine-mode helm-gtags ggtags flycheck-pos-tip flycheck stickyfunc-enhance srefactor ibuffer-projectile auctex-latexmk yapfify uuidgen py-isort pdf-tools tablist org-projectile org-download livid-mode skewer-mode simple-httpd live-py-mode link-hint git-link flyspell-correct-helm flyspell-correct eyebrowse evil-visual-mark-mode evil-unimpaired evil-ediff eshell-z dumb-jump company-shell column-enforce-mode helm-flyspell auto-dictionary youdao-dictionary xterm-color ws-butler window-numbering which-key web-mode web-beautify volatile-highlights vimrc-mode vi-tilde-fringe use-package toc-org tagedit spacemacs-theme spaceline smooth-scrolling smeargle slim-mode shell-pop scss-mode sass-mode restart-emacs rainbow-delimiters quelpa pyvenv pytest pyenv-mode py-yapf popwin pip-requirements persp-mode pcre2el paradox pangu-spacing page-break-lines org-repo-todo org-pomodoro org-bullets open-junk-file neotree multi-term move-text magit-gitflow macrostep lorem-ipsum linum-relative leuven-theme less-css-mode json-mode js2-refactor js-doc jade-mode info+ indent-guide ido-vertical-mode hy-mode hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers highlight-indentation help-fns+ helm-themes helm-swoop helm-pydoc helm-projectile helm-mode-manager helm-make helm-gitignore helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag google-translate golden-ratio gnuplot gitconfig-mode gitattributes-mode git-timemachine git-messenger flx-ido fish-mode find-by-pinyin-dired fill-column-indicator fcitx fancy-battery expand-region exec-path-from-shell evil-visualstar evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-args evil-anzu eval-sexp-fu eshell-prompt-extras esh-help emmet-mode elisp-slime-nav disaster define-word cython-mode company-web company-tern company-statistics company-quickhelp company-c-headers company-auctex company-anaconda coffee-mode cmake-mode clean-aindent-mode clang-format chinese-pyim buffer-move bracketed-paste auto-yasnippet auto-highlight-symbol auto-compile aggressive-indent adaptive-wrap ace-window ace-pinyin ace-link ace-jump-helm-line ac-ispell)))
 '(paradox-automatically-star nil)
 '(preview-default-option-list
   (quote
    ("displaymath" "floats" "graphics" "textmath" "sections" "showlabels" "sectio")))
 '(preview-gs-options
   (quote
    ("-q" "-dDELAYSAFER" "-dNOPAUSE" "-DNOPLATFONTS" "-dPrinted" "-dTextAlphaBits=4" "-dGraphicsAlphaBits=4")))
 '(preview-scale-function 2)
 '(safe-local-variable-values
   (quote
    ((org-export-allow-bind-keywords . t)
     (eval font-lock-add-keywords nil
           (\`
            (((\,
               (concat "("
                       (regexp-opt
                        (quote
                         ("sp-do-move-op" "sp-do-move-cl" "sp-do-put-op" "sp-do-put-cl" "sp-do-del-op" "sp-do-del-cl"))
                        t)
                       "\\_>"))
              1
              (quote font-lock-variable-name-face)))))
     (eval progn
           (pp-buffer)
           (indent-buffer))
     (flycheck-clang-language-standard . c++11)
     (flycheck-gcc-language-standard . c++11))))
 '(term-buffer-maximum-size 10000)
 '(web-mode-enable-auto-closing t)
 '(web-mode-enable-auto-indentation t)
 '(web-mode-enable-auto-opening t)
 '(web-mode-enable-auto-pairing t)
 '(web-mode-enable-auto-quoting t)
 '(web-mode-enable-css-colorization t)
 '(word-wrap nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))
