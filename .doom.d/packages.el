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
(package! helm-bibtex :pin "01b7fef069198bc440f38969f0a8f28cb7b6d5a0")
(package! notmuch :pin "32bef335658763b5e9d887db3ac22bb3c1b76d9e")
(package! poporg :pin "2c58d68c81ecca4140bf179f19ed153ec804b65a")
(package! posframe :pin "3084cb6eb366d26b0f5a4aa9baffb297178be3b8")
(package! company-posframe :pin "b67ec1fa83229187fdf1d3dc5576f81a37a2b369")
(package! ivy-posframe :pin "533a8e368fcabfd534761a5c685ce713376fa594")
(package! ellocate :pin "81405082f68f0577c9f176d3d4f034a7142aba59")
(package! ivy-rich :pin "600b8183ed0be8668dcc548cc2c8cb94b001363b")
(package! vlf :pin "cc02f2533782d6b9b628cec7e2dcf25b2d05a27c")
(package! beginend :pin "c8fe2cdaa0c7813d5da80f3371e0aa388b81e19b")

(package! diminish :pin "fbd5d846611bad828e336b25d2e131d1bc06b83d")
(package! spacemacs-theme :pin "e04d1f21107a1565861625209bb9c46a7aa43cc5")
(package! rainbow-mode :pin "949166cc0146bc9fabf74ce70c1c4a097f4cffd4")
(package! rainbow-delimiters :pin "a32b39bdfe6c61c322c37226d66e1b6d4f107ed0")

;; (package! org-pdfview :pin "8b71f313634b95a1fac42fc701934fd796565f3b")
(package! org-ref :pin "7f46abf8c520af4503fe454c79ab121fd3efb9f3")
(package! general :pin "9651024e7f40a8ac5c3f31f8675d3ebe2b667344")
(package! ace-pinyin :pin "47662c0b05775ba353464b44c0f1a037c85e746e")
(package! esup :pin "4b49c8d599d4cc0fbf994e9e54a9c78e5ab62a5f")
(package! evil-terminal-cursor-changer :pin "12ea9c0438c67e560b3866dc78b5c7d1d93f8cc5")
(package! vimrc-mode :pin "13bc150a870d5d4a95f1111e4740e2b22813c30e")
(package! cal-china-x :pin "94005e678a1d2522b7a00299779f40c5c77286b8")
(package! highlight-indentation :pin "d88db4248882da2d4316e76ed673b4ac1fa99ce3")
(package! helm-bibtex :pin "01b7fef069198bc440f38969f0a8f28cb7b6d5a0")
(package! counsel-etags :pin "e38b12771183fd43fb94c9fa562b20b5efeefc1b")
(package! google-this :pin "8a2e3ca5da6a8c89bfe99a21486c6c7db125dc84")
(package! zeal-at-point :pin "0fc3263f44e95acd3e9d91057677621ce4d297ee")

(package! engine-mode
  :recipe (:host github :repo "hrs/engine-mode" :branch "main")
  :pin "57045918301f5a96f67bd409f7683987a72272cd")
(package! youdao-dictionary :pin "8a4815a43565b9bfd257246e4895b8bfafb9d573")
(package! notmuch :pin "32bef335658763b5e9d887db3ac22bb3c1b76d9e")
(package! org-mime :pin "cc00afcf0291633324364c1c83bfe2833cfdc1bf")
(when (featurep! :completion ivy)
  (package! counsel-notmuch :pin "a4a1562935e4180c42524c51609d1283e9be0688"))
(package! ox-hugo :pin "e532fce4a4fbf9a7981bed07d1b9ec30a4d0a305")
(package! org-gcal :pin "40291bec0cd0bf8a2f5db656e4d3077b256092ae")
(package! telega
  :pin "870fe3201c14f828cfec0529aa78c110958e9aae")
;; (package! slack)
(package! popwin :pin "2165d34df8884c8308ff31f3dbc8b13825ede6c8")
(package! org-noter :pin "9ead81d42dd4dd5074782d239b2efddf9b8b7b3d")
(package! recursive-narrow :pin "5e3e2067d5a148d7e64e64e0355d3b6860e4c259")
(package! ranger :pin "2498519cb21dcd5791d240607a72a204d1761668")
(package! langtool :pin "8276eccc5587bc12fd205ee58a7a982f0a136e41")
(package! ox-reveal :pin "8567d2b1118bde343980b878af9a38f14d85ffcd")
(package! org-re-reveal :disable t)
(package! hydra-posframe :recipe (:host github :repo "Ladicle/hydra-posframe") :pin "94405b5fbec1ae9447c976c3deef41043b9b7de3")

(package! hl-line :disable t)
(package! solaire-mode :disable t)
(package! docker-tramp :disable t)

(package! org-protocol-capture-html
  :recipe (:host github
           :repo "alphapapa/org-protocol-capture-html")
  :pin "a912aaefae8abdada2b2479aec0ad53fcf0b57bf")
(package! doct :pin "506c22f365b75f5423810c4933856802554df464")
;; Remove annoying indentation in org-mode
;; (package! org-indent :disable t)
(package! wucuo :pin "a7fe5428c88522a121c22b5811cb499a16fd8fa8")
(package! package-lint :pin "4ea8318c1bf79ccb1b4658d58917bbd9f990c432")
(package! org-latex-impatient
  :recipe (:host github :repo "yangsheng6810/org-latex-instant-preview" :branch "develop")
  :pin "586735f18863dfe4ab54ccf3668813e2eb8b5e89")
(package! cdlatex :pin "ac024ce29318cab812a743ad132a531c855c27a5")
;; show latex in eww
(package! texfrag :pin "bcceb82971c10b8c0b058b77b3764669900392aa")
(package! auto-dim-other-buffers :pin "33b5f88b799a17947c266b04ad59462c5aeb4ed7")
(package! edit-indirect :pin "f80f63822ffae78de38dbe72cacaeb1aaa96c732")
(package! deft :pin "28be94d89bff2e1c7edef7244d7c5ba0636b1296")

(package! org-super-agenda :pin "f4f528985397c833c870967884b013cf91a1da4a")
(package! git-messenger :pin "eade986ef529aa2dac6944ad61b18de55cee0b76")

(package! flycheck-package :pin "3a6aaed29ff61418c48c0251e1432c30748ae739")
(package! chinese-yasdcv :pin "5ab830daf1273d5a5cddcb94b56a9737f12d996f")
;; for query org files
(package! org-ql :pin "5f70636556bffca92d8ef8297ba3002a4ab5b52d")
;; org-roam-bibtex
(package! org-roam-bibtex
   :pin "aa0920461ada65637ce0218748b9d2b5c3ffa064"
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
  :pin "ce0ddffefefb31fa465c143bcf74355fea4564e5")

;; to use commit https://github.com/Wilfred/helpful/commit/584ecc887bb92133119f93a6716cdf7af0b51dca
(unpin! helpful)
(package! dired-avfs :pin "7c0ef09d57a80068a11edc74c3568e5ead5cc15a")
(package! dired-open :pin "7c0ef09d57a80068a11edc74c3568e5ead5cc15a")
;; (package! dired-rainbow)
(package! dired-narrow :pin "7c0ef09d57a80068a11edc74c3568e5ead5cc15a")
(package! dired-subtree :pin "7c0ef09d57a80068a11edc74c3568e5ead5cc15a")
(package! dired-filter :pin "7c0ef09d57a80068a11edc74c3568e5ead5cc15a")
;;; Not yet published on melpa
;; (package! dired-list
;;   :recipe (:type git
;;            :repo "Fuco1/dired-hacks"
;;            :files ("dired-open.el")))
(package! dired-collapse :pin "7c0ef09d57a80068a11edc74c3568e5ead5cc15a")

(package! dired-quick-sort :pin "69b06f306a5fc2b38e707bae3ff1e35db2b39b6b")
(package! dired-hide-dotfiles :pin "6a379f23f64045f5950d229254ce6f32dbbf5364")
;; for common-lisp
(package! slime :pin "f41e5590e28a1dff1fc07111b43841eb1692de94")
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
  :pin "20cfc81a5651df5d356abdfb6eb1ff5ae3f76a1f")
(package! vterm-toggle :pin "b94522e3a4ddaae098f4711aadce675e891cdec8")
;; special links/blocks in org-mode
(package! org-special-block-extras :pin "2e397dac372ff75ea6ee6eed9ae3a0540a082af8")
;; search org tasks (heading and contents)
(package! helm-org-rifle :pin "3aa49b0c79f08987495cc42db6c83b5d84424ef5")
;; dashboard for elfeed
(package! elfeed-dashboard :pin "26ff3573efce3cb66c8814854a2983a69683af09")
;; using cheat.sh
(package! cheat-sh :pin "33bae22feae8d3375739c6bdef08d0dcdf47ee42")
(package! org-mru-clock :pin "2d3374a1b758a04f08f75b2a5fe05e99989077c1")
(package! crux :pin "6bfd212a7f7ae32e455802fde1f9e3f4fba932a0")
;; auto toggle org-latex preview when cursor is on
(package! org-fragtog :pin "c675563af3f9ab5558cfd5ea460e2a07477b0cfd")
;; horizontal scroll
(package! phscroll
  :recipe (:host github :repo "misohena/phscroll") :pin "f3b6fa54768851776dd141a461f18710f2d46b91")
(package! emms :pin "d9f67eeb1ce68c228fcbe02596318c6452b6292a")
(package! helm-emms :pin "aefa44ab77808626c4951be2df49a2eab7820805")
(package! ivy-emms :pin "dfde98c3bdad8136709eac8382ba048fafdcc6ac")
(package! org-autolist :pin "0f5dc4e00cb050b94289504925b36c7650552a1a")
;; realgud takes forever to build
(package! realgud :disable t)
;; zap to char with ace/avy
(package! ace-jump-zap :pin "52b5d4c6c73bd0fc833a0dcb4e803a5287d8cae8")
(package! ace-isearch :pin "a24bfc626100f183dbad016bd7723eb12e238534")

(package! org-appear :pin "60ba267c5da336e75e603f8c7ab3f44e6f4e4dac")
;; snippets for LaTeX and other major-modes
(package! aas :pin "e92b5cffa4e87c221c24f3e72ae33959e1ec2b68")
(package! laas :pin "44533de4968fee924d9cc81ce9a23c9d82847db3")
;; beautiful org-agenda
(package! elegant-agenda-mode :pin "5cbc688584ba103ea3be7d7b30e5d94e52f59eb6")
;; better theme for org html export
(package! org-html-themify
  :recipe (:host github
           :repo "DogLooksGood/org-html-themify"
           :files ("*.el" "*.js" "*.css"))
  :pin "061cfc002ff6ea41c622447bec22f49d618c36de")
;; for patching
(package! el-patch
  :pin "156c61b72c1c9c61bd886b5931b8a382153f52fa")
;; For editing a block in another mode
(package! separedit :pin "328d792401f8f099472c4c35a2c085fbe18fd00d")

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
(package! valign)

(package! el-search :pin "eabb699d135e73d7bc4c8b54ed4ebf79f6e176bd")

;; fill org table
(package! ftable :pin "96a0475871b1642582a0c0fb5a361a8af0dd5923")

;; show a pretty svg clock
; (package! svg-clock :pin "1973fa9fa1834d51f47f5db8a693976b681fd520")
