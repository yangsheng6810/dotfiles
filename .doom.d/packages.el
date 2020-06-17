;; -*- no-byte-compile: t; -*-
;;; .doom.d/packages.el

;;; Examples:
;; (package! some-package)
;; (package! another-package :recipe (:host github :repo "username/repo"))
;; (package! builtin-package :disable t)

(package! cnfonts)
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
(package! org-journal)
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
(package! slack)
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
