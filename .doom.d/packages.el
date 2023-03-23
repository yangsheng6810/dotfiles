;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;; To install a package with Doom you must declare them here and run 'doom sync'
;; on the command line, then restart Emacs for the changes to take effect -- or
;; use 'M-x doom/reload'.


;; To install SOME-PACKAGE from MELPA, ELPA or emacsmirror:
;(package! some-package)

;; To install a package directly from a remote git repo, you must specify a
;; `:recipe'. You'll find documentation on what `:recipe' accepts here:
;; https://github.com/raxod502/straight.el#the-recipe-format
;(package! another-package
;  :recipe (:host github :repo "username/repo"))

;; If the package you are trying to install does not contain a PACKAGENAME.el
;; file, or is located in a subdirectory of the repo, you'll need to specify
;; `:files' in the `:recipe':
;(package! this-package
;  :recipe (:host github :repo "username/repo"
;           :files ("some-file.el" "src/lisp/*.el")))

;; If you'd like to disable a package included with Doom, you can do so here
;; with the `:disable' property:
;(package! builtin-package :disable t)

;; You can override the recipe of a built in package without having to specify
;; all the properties for `:recipe'. These will inherit the rest of its recipe
;; from Doom or MELPA/ELPA/Emacsmirror:
;(package! builtin-package :recipe (:nonrecursive t))
;(package! builtin-package-2 :recipe (:repo "myfork/package"))

;; Specify a `:branch' to install a package from a particular branch or tag.
;; This is required for some packages whose default branch isn't 'master' (which
;; our package manager can't deal with; see raxod502/straight.el#279)
;(package! builtin-package :recipe (:branch "develop"))

;; Use `:pin' to specify a particular commit to install.
;(package! builtin-package :pin "1a2b3c4d5e")


;; Doom's packages are pinned to a specific commit and updated from release to
;; release. The `unpin!' macro allows you to unpin single packages...
;(unpin! pinned-package)
;; ...or multiple packages
;(unpin! pinned-package another-pinned-package)
;; ...Or *all* packages (NOT RECOMMENDED; will likely break things)
;(unpin! t)

(package! eterm-256color :pin "c9cfccef03e730f7ab2b407aada3df15ace1fe32")
(package! olivetti :pin "8d287a80c5e3d72ac01b56c8afe60b01f18500b4")
(package! helm-bibtex :pin "8ebf50d5bd368082d0b7ab79d26a52f372cdef98")
(package! notmuch :pin "d86e03c786ec51e2ca4af4e7c756cd19adbe17a8")
(package! poporg :pin "2c58d68c81ecca4140bf179f19ed153ec804b65a")
(package! posframe :pin "b00f1386ca4e251a5c3d8985d313217e56e42a7e")
(package! company-posframe :pin "18d6641bba72cba3c00018cee737ea8b454f64a8")
(package! ivy-posframe :pin "533a8e368fcabfd534761a5c685ce713376fa594")
(package! ellocate :pin "81405082f68f0577c9f176d3d4f034a7142aba59")
(package! ivy-rich :pin "4fdd4669d69c9e8248b361b6e069b27d10e809e4")
(package! vlf :pin "cc02f2533782d6b9b628cec7e2dcf25b2d05a27c")
(package! beginend :pin "61f1eb22718fcd9796b47a98702d161ff323a532")

(package! diminish :pin "fbd5d846611bad828e336b25d2e131d1bc06b83d")
(package! spacemacs-theme :pin "05fe9bc750203960179d456ae4079d582561659c")
;; NOTE: the following will fail to update
(package! rainbow-mode :pin "949166cc0146bc9fabf74ce70c1c4a097f4cffd4")
(package! rainbow-delimiters :pin "a32b39bdfe6c61c322c37226d66e1b6d4f107ed0")

;; (package! org-pdfview :pin "8b71f313634b95a1fac42fc701934fd796565f3b")
(package! org-ref :pin "1af17e6df1a8ad967352edff0223cd8d3cf55836")
(package! general :pin "7ce8db297e3de258ec43802269438ac7f1918707")
(package! ace-pinyin
  :recipe (:host github :repo "yangsheng6810/ace-pinyin")
  :pin "0bbd35267501408ec8ec9c4fee8aacf039657fa1")
(package! esup :pin "4b49c8d599d4cc0fbf994e9e54a9c78e5ab62a5f")
(package! evil-terminal-cursor-changer :pin "12ea9c0438c67e560b3866dc78b5c7d1d93f8cc5")
(package! vimrc-mode :pin "13bc150a870d5d4a95f1111e4740e2b22813c30e")
(package! cal-china-x :pin "94005e678a1d2522b7a00299779f40c5c77286b8")
(package! highlight-indentation :pin "d88db4248882da2d4316e76ed673b4ac1fa99ce3")
(package! helm-bibtex :pin "8ebf50d5bd368082d0b7ab79d26a52f372cdef98")
(package! counsel-etags :pin "a65c03d2a82bae2571993b77b980f2f27c138ecb")
(package! google-this :pin "8a2e3ca5da6a8c89bfe99a21486c6c7db125dc84")
(package! zeal-at-point :pin "0fc3263f44e95acd3e9d91057677621ce4d297ee")

(package! engine-mode
  :recipe (:host github :repo "hrs/engine-mode" :branch "main")
  :pin "30a361b27f203a0ecc59c45e45bc8a6c6e79faae")
(package! youdao-dictionary :pin "8a4815a43565b9bfd257246e4895b8bfafb9d573"
  :recipe (:build (:not autoloads)))
(package! notmuch :pin "d86e03c786ec51e2ca4af4e7c756cd19adbe17a8")
(package! org-mime :pin "d368bd4119bfcf2997a6a23bbf5f41e043164d29")
(when (featurep! :completion ivy)
  (package! counsel-notmuch :pin "a4a1562935e4180c42524c51609d1283e9be0688"))
(package! ox-hugo :pin "706b5f622d168bb8e0cf503e0525d2db9177c83e")
(package! org-gcal :pin "9bb3720525ad1c45823abab8ce910dd1225e7dcd")
(package! telega
  :pin "2b284714cd750c7d69c9d452340c1b31b4e01016")
;; (package! slack)
(package! popwin :pin "1e57430615b60bf33e85228f7cc625537f468241")
(package! org-noter :pin "582e2bfb57e56aafb007f2e8a595a1cc0cc09075")
(package! recursive-narrow :pin "5e3e2067d5a148d7e64e64e0355d3b6860e4c259")
(package! ranger :pin "2498519cb21dcd5791d240607a72a204d1761668")
(package! langtool :pin "d86101eafe9a994eb0425e08e7c1795e9cb0cd42")
(package! ox-reveal :pin "f55c851bf6aeb1bb2a7f6cf0f2b7bd0e79c4a5a0")
(package! org-re-reveal :disable t)
(package! hydra-posframe :recipe (:host github :repo "Ladicle/hydra-posframe") :pin "94405b5fbec1ae9447c976c3deef41043b9b7de3")

(package! hl-line :disable t)
(package! solaire-mode :disable t)
(package! docker-tramp :disable t)

(package! org-protocol-capture-html
  :recipe (:host github
           :repo "alphapapa/org-protocol-capture-html")
  :pin "a912aaefae8abdada2b2479aec0ad53fcf0b57bf")
(package! doct :pin "69bfe30317c7fa7a5a51f2763515dfe9c989ebf1")
;; Remove annoying indentation in org-mode
;; (package! org-indent :disable t)
(package! wucuo :pin "a7fe5428c88522a121c22b5811cb499a16fd8fa8")
(package! package-lint :pin "8f7c46d204c9ebe99e3843934be726fa3a3e5190")
(package! org-latex-impatient
  :recipe (:host github :repo "yangsheng6810/org-latex-instant-preview" :branch "develop")
  :pin "586735f18863dfe4ab54ccf3668813e2eb8b5e89")
(package! cdlatex :pin "ac024ce29318cab812a743ad132a531c855c27a5")
;; show latex in eww
(package! texfrag :pin "6df9044c3d6bbb2a104f2c9b78ad10aa3cdf9506")
(package! auto-dim-other-buffers :pin "33b5f88b799a17947c266b04ad59462c5aeb4ed7")
(package! edit-indirect :pin "f80f63822ffae78de38dbe72cacaeb1aaa96c732")
(package! deft :pin "28be94d89bff2e1c7edef7244d7c5ba0636b1296")

(package! org-super-agenda :pin "f4f528985397c833c870967884b013cf91a1da4a")
(package! git-messenger :pin "eade986ef529aa2dac6944ad61b18de55cee0b76")

(package! flycheck-package :pin "3a6aaed29ff61418c48c0251e1432c30748ae739")
(package! chinese-yasdcv :pin "5ab830daf1273d5a5cddcb94b56a9737f12d996f")
;; for query org files
(package! org-ql :pin "1d98c7d07c6f2af5c84e8358cb6c5db71e8f1006")
;; org-roam-bibtex
(package! org-roam-bibtex
   :pin "c87acc2d5685ba2608e2bd1f128e723f1de9d837"
   :recipe (:host github :repo "org-roam/org-roam-bibtex"))

;; org-journal in doom suffers obsolete function problem
(unpin! org-journal)

;; When using bibtex-completion via the `biblio` module
(unpin! bibtex-completion helm-bibtex ivy-bibtex)

(package! i3wm-config-mode :pin "188e3978807ec39eba3cb69d973c0062af324215")
(package! org-download :pin "19e166f0a8c539b4144cfbc614309d47a9b2a9b7")
(package! iscroll
  :recipe (:type git
           :repo "casouri/lunarymacs"
           :files ("site-lisp/iscroll.el"))
  :pin "785c2143d867fdcaa80cb819d4c5d1da8bae40ca")

;; to use commit https://github.com/Wilfred/helpful/commit/584ecc887bb92133119f93a6716cdf7af0b51dca
(unpin! helpful)
(package! dired-avfs :pin "1596e516835099b96cb65d1dc372cfbdff6aea96")
(package! dired-open :pin "1596e516835099b96cb65d1dc372cfbdff6aea96")
;; (package! dired-rainbow)
(package! dired-narrow :pin "1596e516835099b96cb65d1dc372cfbdff6aea96")
(package! dired-subtree :pin "1596e516835099b96cb65d1dc372cfbdff6aea96")
(package! dired-filter :pin "1596e516835099b96cb65d1dc372cfbdff6aea96")
;;; Not yet published on melpa
;; (package! dired-list
;;   :recipe (:type git
;;            :repo "Fuco1/dired-hacks"
;;            :files ("dired-open.el")))
(package! dired-collapse :pin "1596e516835099b96cb65d1dc372cfbdff6aea96")

(package! dired-quick-sort :pin "69b06f306a5fc2b38e707bae3ff1e35db2b39b6b")
(package! dired-hide-dotfiles :pin "6a379f23f64045f5950d229254ce6f32dbbf5364")
;; for common-lisp
(package! slime :pin "dd179f4a0c6874fe0e49fb6c460e9e52a5f58833")
;; for rx explanation
(package! pcre2el :pin "38c6f80c787da547287db96b495e5b695ca0b4b8")
;; turning ^L visual
(package! page-break-lines :pin "79eca86e0634ac68af862e15c8a236c37f446dcd")
;; interactive find/fd
(package! find-file-in-project :pin "af7bc59a3b9ab626bea88ff81b9227cc22c09362")
;; org-transclusion
(package! org-transclusion
  :recipe (:host github
           :repo "nobiot/org-transclusion"
           :branch "main"
           :depth 1)
  :pin "ff722826cec3a77f57f819a7810bc50fcc36d262")
(package! vterm-toggle :pin "b94522e3a4ddaae098f4711aadce675e891cdec8")
;; special links/blocks in org-mode
(package! org-special-block-extras :pin "0a0a199b5962af59ffd5c2a25af20ad7c9c22dc8")
;; search org tasks (heading and contents)
(package! helm-org-rifle :pin "74725b63e71b1c941f354e6c8a2cf8b5ee7ef563")
;; dashboard for elfeed
(package! elfeed-dashboard :pin "26ff3573efce3cb66c8814854a2983a69683af09")
;; using cheat.sh
(package! cheat-sh :pin "33bae22feae8d3375739c6bdef08d0dcdf47ee42")
(package! org-mru-clock :pin "be90bc9084b384d8a728d68f69da09171ca26d3c")
(package! crux :pin "f8789f67a9d2e1eb31a0e4531aec9bb6d6ec1282")
;; auto toggle org-latex preview when cursor is on
(package! org-fragtog :pin "c675563af3f9ab5558cfd5ea460e2a07477b0cfd")
;; horizontal scroll
(package! phscroll
  :recipe (:host github :repo "misohena/phscroll") :pin "16aa0f1b85ce14364e01d7c40d6f1fe28700c14c")
(package! emms :pin "c8b64ecc934a0832c91ca59813aceaf868540707")
(package! helm-emms :pin "aefa44ab77808626c4951be2df49a2eab7820805")
(package! ivy-emms :pin "dfde98c3bdad8136709eac8382ba048fafdcc6ac")
(package! org-autolist :pin "0f5dc4e00cb050b94289504925b36c7650552a1a")
;; realgud takes forever to build
(package! realgud :disable t)
;; zap to char with ace/avy
(package! ace-jump-zap :pin "52b5d4c6c73bd0fc833a0dcb4e803a5287d8cae8")
(package! ace-isearch :pin "a24bfc626100f183dbad016bd7723eb12e238534")

(package! org-appear :pin "eb9f9db40aa529fe4b977235d86494b115281d17")
;; snippets for LaTeX and other major-modes
(package! aas :pin "ddc2b7a58a2234477006af348b30e970f73bc2c1")
(package! laas :pin "7f4044918c4e0a9b71128f36f65f1d86842203f9")
;; beautiful org-agenda
(package! elegant-agenda-mode :pin "5cbc688584ba103ea3be7d7b30e5d94e52f59eb6")
;; better theme for org html export
(package! org-html-themify
  :recipe (:host github
           :repo "DogLooksGood/org-html-themify"
           :files ("*.el" "*.js" "*.css"))
  :pin "061cfc002ff6ea41c622447bec22f49d618c36de")
;; for patching
(package! el-patch :pin "c2be85bc1ffdf680a9c796dacb177e4b0cabef6f")
;; For editing a block in another mode
(package! separedit :pin "6020463e5ebb523f586609c76371620152a076d8")

;; Query replace with live feedback
(package! visual-regexp :pin "48457d42a5e0fe10fa3a9c15854f1f127ade09b5")
;; And mordern regexp
(package! visual-regexp-steroids :pin "a6420b25ec0fbba43bf57875827092e1196d8a9e")
;; Suggest a function
(package! suggest :pin "7b1c7fd38cd9389e58f672bfe58d9e88aeb898c7")
;; Take a screenshot
(package! screenshot :recipe (:host github :repo "yangsheng6810/screenshot") :pin "e21ca2ddd7cffca65cec5257440d527938cc42fb")

(package! elfeed-goodies :disable t)
;; Ass stripe to dired-mode
(package! stripe-buffer :pin "c252080f55cb78c951b19ebab9687f6d00237baf")
;; preview in dired
(package! peep-dired :pin "29f6e7058f635b0084880a1f890a6c92501e8c29")
(package! valign :pin "c9d30a31002cd296f2ea7398ca86ae9f48553467")

(package! el-search :pin "eabb699d135e73d7bc4c8b54ed4ebf79f6e176bd")

;; fill org table
(package! ftable :pin "96a0475871b1642582a0c0fb5a361a8af0dd5923")

;; show a pretty svg clock
; (package! svg-clock :pin "1973fa9fa1834d51f47f5db8a693976b681fd520")
(package! tomelr :recipe (:host github :repo "emacs-straight/tomelr" :branch "master")
  :pin "57cb24df521031a6d02f61091db82d292e4175df")
(package! persist :recipe (:host github :repo "emacs-straight/persist" :branch "master")
  :pin "c10835478d9f916534a07fad0174d497adf85729")
(package! peg :recipe (:host github :repo "emacs-straight/peg" :branch "master")
  :pin "5d4ed356ca89acdf52a3e7e7f8e2408b808552c4")
(package! stream :recipe (:host github :repo "emacs-straight/stream" :branch "master")
  :pin "ab55c6eca138eb84fd4fc54e305610446cfd82dc")
(package! map :recipe (:host github :repo "emacs-straight/map" :branch "master")
  :pin "a0e501aede34f183a8baa5d3d41610a3ffa1728e")

(package! visual-fill-column :recipe (:host github :repo "emacsmirror/visual-fill-column" :branch "master")
  :pin "695a59789209c42fa08a5bce92963ee32f4455be")
(package! tree-sitter-indent :recipe (:host github :repo "emacsmirror/tree-sitter-indent" :branch "master")
  :pin "4ef246db3e4ff99f672fe5e4b416c890f885c09e")
(package! undo-fu-session :recipe (:host github :repo "emacsmirror/undo-fu-session" :branch "master")
  :pin "7b3fd0647dd1fbd02101eec61440e6d44953bcd9")
(package! undo-fu :recipe (:host github :repo "emacsmirror/undo-fu" :branch "master")
  :pin "0e22308de8337a9291ddd589edae167d458fbe77")
;; (package! xr :recipe (:host github :repo "emacs-straight/xr" :branch "master"))

(package! org-modern)
(package! nothing-theme)
(package! eziam-themes)
(package! almost-mono-themes)

(package! transient :recipe (:host github :repo "magit/transient" :branch "main"))
(package! emacsql :recipe (:host github :repo "magit/emacsql" :branch "main"))
(package! xr :recipe (:host github :repo "emacs-straight/xr" :branch "master"))
