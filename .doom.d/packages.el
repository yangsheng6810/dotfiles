;; -*- no-byte-compile: t; -*-
;;; .doom.d/packages.el

;;; Examples:
;; (package! some-package)
;; (package! another-package :recipe (:host github :repo "username/repo"))
;; (package! builtin-package :disable t)

;; (package! cnfonts)
(package! eterm-256color)
(package! olivetti)
(package! helm-bibtex)
(package! notmuch)
(package! poporg)
(package! posframe)
(package! company-posframe)
(package! ivy-posframe)
(package! ellocate)
(package! ivy-rich)
(package! vlf)
(package! beginend)
; (package! beacon)
(package! diminish)
(package! spacemacs-theme)
(package! rainbow-mode)
(package! rainbow-delimiters)

(package! org-pdfview)
(package! org-ref)
(package! general)
(package! ace-pinyin)
(package! esup)
(package! evil-terminal-cursor-changer)
(package! vimrc-mode)
(package! cal-china-x)
(package! highlight-indentation)
(package! helm-bibtex)
(package! counsel-etags)
(package! google-this)
(package! zeal-at-point)
(package! engine-mode
  :recipe (:host github :repo "hrs/engine-mode" :branch "main"))
(package! youdao-dictionary)
(package! notmuch)
(package! org-mime)
(when (featurep! :completion ivy)
  (package! counsel-notmuch))
(package! ox-hugo)
(package! org-gcal)
(package! telega)
;; (package! slack)
(package! popwin)
(package! org-noter)
(package! recursive-narrow)
(package! ranger)
(package! langtool)
(package! ox-reveal)
(package! org-re-reveal :disable t)
(package! hydra-posframe :recipe (:host github :repo "Ladicle/hydra-posframe"))

(package! hl-line :disable t)
(package! solaire-mode :disable t)
(package! beancount
  :recipe (:host github
                 :repo "beancount/beancount"
                 :files ("edtiors/emacs/beancount.el")))
(package! org-protocol-capture-html
  :recipe (:host github
                 :repo "alphapapa/org-protocol-capture-html"))
(package! doct)
;; Remove annoying indentation in org-mode
;; (package! org-indent :disable t)
(package! wucuo)
(package! valign
  :recipe (:host github :repo "casouri/valign"))
(package! package-lint)
(package! org-latex-impatient
  :recipe (:host github :repo "yangsheng6810/org-latex-instant-preview" :branch "develop"))
(package! cdlatex)
;; show latex in eww
(package! texfrag)
(package! auto-dim-other-buffers)
(package! edit-indirect)
(package! deft)

(package! org-super-agenda)
(package! el-search)
(package! git-messenger)

;; (package! xenops)

(package! flycheck-package)
(package! chinese-yasdcv)
;; for query org files
(package! org-ql)
;; org-roam-bibtex
(package! org-roam-bibtex
   ;; :pin "80a86980801ff233d7c12ae9efef589ffa53df67"
   :recipe (:host github :repo "org-roam/org-roam-bibtex"))

;; org-journal in doom suffers obsolete function problem
(unpin! org-journal)

;; When using bibtex-completion via the `biblio` module
(unpin! bibtex-completion helm-bibtex ivy-bibtex)

(package! i3wm-config-mode)
(package! org-download)
(package! iscroll
  :recipe (:type git
           :repo "casouri/lunarymacs"
           :files ("site-lisp/iscroll.el")))

;; to use commit https://github.com/Wilfred/helpful/commit/584ecc887bb92133119f93a6716cdf7af0b51dca
(unpin! helpful)
(package! dired-avfs)
(package! dired-open)
;; (package! dired-rainbow)
(package! dired-narrow)
(package! dired-subtree)
(package! dired-filter)
;;; Not yet published on melpa
;; (package! dired-list
;;   :recipe (:type git
;;            :repo "Fuco1/dired-hacks"
;;            :files ("dired-open.el")))
(package! dired-collapse)

(package! dired-quick-sort)
(package! dired-hide-dotfiles)
;; for common-lisp
(package! slime)
;; for rx explanation
(package! pcre2el)
;; turning ^L visual
(package! page-break-lines)
;; interactive find/fd
(package! find-file-in-project)
;; fill org table
(package! ftable
  :recipe (:host github :repo "casouri/ftable"))
;; org-transclusion
(package! org-transclusion
  :recipe (:host github
           :repo "nobiot/org-transclusion"
           :branch "main"))
(package! vterm-toggle)
;; special links/blocks in org-mode
(package! org-special-block-extras)
;; search org tasks (heading and contents)
(package! helm-org-rifle)
;; dashboard for elfeed
(package! elfeed-dashboard)
;; using cheat.sh
(package! cheat-sh)
(package! org-mru-clock)
(package! crux)
;; auto toggle org-latex preview when cursor is on
(package! org-fragtog)
;; horizontal scroll
(package! phscroll
  :recipe (:host github :repo "misohena/phscroll"))
(package! emms)
(package! helm-emms)
(package! ivy-emms)
(package! org-autolist)
;; realgud takes forever to build
(package! realgud :disable t)
;; zap to char with ace/avy
(package! ace-jump-zap)
(package! org-appear)
;; snippets for LaTeX and other major-modes
(package! aas)
(package! laas)
;; beautiful org-agenda
(package! elegant-agenda-mode)
;; better theme for org html export
(package! org-html-themify
  :recipe (:host github
           :repo "DogLooksGood/org-html-themify"
           :files ("*.el" "*.js" "*.css")))
;; for patching
(package! el-patch)
;; For editing a block in another mode
(package! separedit)
