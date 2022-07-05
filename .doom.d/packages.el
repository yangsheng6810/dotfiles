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
(package! helm-bibtex :pin "ce8c17690ddad73d01531084b282f221f8eb6669")
(package! notmuch :pin "3a6b479a7360fbdbc1c6def4c1e1581bfd63e8a2")
(package! poporg :pin "2c58d68c81ecca4140bf179f19ed153ec804b65a")
(package! posframe :pin "0d23bc5f7cfac00277d83ae7ba52c48685bcbc68")
(package! company-posframe :pin "df0e34f69dc8e9aaa1a6c5e88783898f4ae3f2df")
(package! ivy-posframe :pin "533a8e368fcabfd534761a5c685ce713376fa594")
(package! ellocate :pin "81405082f68f0577c9f176d3d4f034a7142aba59")
(package! ivy-rich :pin "600b8183ed0be8668dcc548cc2c8cb94b001363b")
(package! vlf :pin "cc02f2533782d6b9b628cec7e2dcf25b2d05a27c")
(package! beginend :pin "bbcfdc0909c20ddee41e95b7ade7de63af73b220")

(package! diminish :pin "6b7e837b0cf0129e9d7d6abae48093cf599bb9e8")
(package! spacemacs-theme :pin "bd376f705d6eb7afd9a1dfa0c1bd407e869d1e9f")
(package! rainbow-mode :pin "949166cc0146bc9fabf74ce70c1c4a097f4cffd4")
(package! rainbow-delimiters :pin "a32b39bdfe6c61c322c37226d66e1b6d4f107ed0")

(package! org-pdfview :pin "8b71f313634b95a1fac42fc701934fd796565f3b")
(package! org-ref :pin "cbe9e870a5f488cdfc5e6a3b5478845ea8acdcde")
(package! general :pin "9651024e7f40a8ac5c3f31f8675d3ebe2b667344")
(package! ace-pinyin :pin "47662c0b05775ba353464b44c0f1a037c85e746e")
(package! esup :pin "4b49c8d599d4cc0fbf994e9e54a9c78e5ab62a5f")
(package! evil-terminal-cursor-changer :pin "24755a18a311226933946f7218684dab5960ebc9")
(package! vimrc-mode :pin "13bc150a870d5d4a95f1111e4740e2b22813c30e")
(package! cal-china-x :pin "94005e678a1d2522b7a00299779f40c5c77286b8")
(package! highlight-indentation :pin "d88db4248882da2d4316e76ed673b4ac1fa99ce3")
(package! helm-bibtex :pin "ce8c17690ddad73d01531084b282f221f8eb6669")
(package! counsel-etags :pin "05d364b556aadcfe49df727c0729abc3f0c14372")
(package! google-this :pin "8a2e3ca5da6a8c89bfe99a21486c6c7db125dc84")
(package! zeal-at-point :pin "0fc3263f44e95acd3e9d91057677621ce4d297ee")

(package! engine-mode
  :recipe (:host github :repo "hrs/engine-mode" :branch "main")
  :pin "57045918301f5a96f67bd409f7683987a72272cd")
(package! youdao-dictionary :pin "8a4815a43565b9bfd257246e4895b8bfafb9d573")
(package! notmuch :pin "3a6b479a7360fbdbc1c6def4c1e1581bfd63e8a2")
(package! org-mime :pin "cf96f585c68ad14751a3f73d937cbfcb890171b9")
(when (featurep! :completion ivy)
  (package! counsel-notmuch :pin "a4a1562935e4180c42524c51609d1283e9be0688"))
(package! ox-hugo :pin "df0b12ef1aff2b322403f24006f0ec17676d3606")
(package! org-gcal :pin "f8075bd8eac7288eea1060077ca103d5fd01fb65")
(package! telega
  :pin "892ac2e88f764af516abc307ff199cb819442e4e")
;; (package! slack)
(package! popwin :pin "71a0ab27b13733df0fa37fd1a5fcba8799a35df9")
(package! org-noter :pin "9ead81d42dd4dd5074782d239b2efddf9b8b7b3d")
(package! recursive-narrow :pin "5e3e2067d5a148d7e64e64e0355d3b6860e4c259")
(package! ranger :pin "2498519cb21dcd5791d240607a72a204d1761668")
(package! langtool :pin "8276eccc5587bc12fd205ee58a7a982f0a136e41")
(package! ox-reveal :pin "43ebe238ef747985b336880305ae5065da67235c")
(package! org-re-reveal :disable t)
(package! hydra-posframe :recipe (:host github :repo "Ladicle/hydra-posframe") :pin "94405b5fbec1ae9447c976c3deef41043b9b7de3")

(package! hl-line :disable t)
(package! solaire-mode :disable t)

(package! org-protocol-capture-html
  :recipe (:host github
           :repo "alphapapa/org-protocol-capture-html")
  :pin "3359ce9a2f3b48df26329adaee0c4710b1024250")
(package! doct :pin "8464809754f3316d5a2fdcf3c01ce1e8736b323b")
;; Remove annoying indentation in org-mode
;; (package! org-indent :disable t)
(package! wucuo :pin "fe5dfb4e4db38f9fc944509a687812b8f419b958")
(package! package-lint :pin "468b147ee85b4e963eaac46b8e8428fe740997c4")
(package! org-latex-impatient
  :recipe (:host github :repo "yangsheng6810/org-latex-instant-preview" :branch "develop")
  :pin "586735f18863dfe4ab54ccf3668813e2eb8b5e89")
(package! cdlatex :pin "8e963c68531f75e459e8ebe7a34fd3ba9d3729a0")
;; show latex in eww
(package! texfrag :pin "bcceb82971c10b8c0b058b77b3764669900392aa")
(package! auto-dim-other-buffers :pin "33b5f88b799a17947c266b04ad59462c5aeb4ed7")
(package! edit-indirect :pin "f80f63822ffae78de38dbe72cacaeb1aaa96c732")
(package! deft :pin "28be94d89bff2e1c7edef7244d7c5ba0636b1296")

(package! org-super-agenda :pin "3108bc3f725818f0e868520d2c243abe9acbef4e")
(package! git-messenger :pin "eade986ef529aa2dac6944ad61b18de55cee0b76")

(package! flycheck-package :pin "615c1ed8c6fb7c73abec6aaa73d3fef498d231bc")
(package! chinese-yasdcv :pin "5ab830daf1273d5a5cddcb94b56a9737f12d996f")
;; for query org files
(package! org-ql :pin "64a9234733904af20fd495861792f1d5c2b37190")
;; org-roam-bibtex
(package! org-roam-bibtex
   :pin "efdac6fe4134c33f50b06a0a6d192003d0e5094c"
   :recipe (:host github :repo "org-roam/org-roam-bibtex"))

;; org-journal in doom suffers obsolete function problem
(unpin! org-journal)

;; When using bibtex-completion via the `biblio` module
(unpin! bibtex-completion helm-bibtex ivy-bibtex)

(package! i3wm-config-mode :pin "c70bdc1367e461299e13a4797bc9d9d950184edd")
(package! org-download :pin "947ca223643d28e189480e607df68449c15786cb")
(package! iscroll
  :recipe (:type git
           :repo "casouri/lunarymacs"
           :files ("site-lisp/iscroll.el"))
  :pin "beaaa0059a7be621951b9b45b6ef2482d293406b")

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
(package! slime :pin "1f9a95f3a07b2aa5b01d8be427b90837be5cea6a")
;; for rx explanation
(package! pcre2el :pin "0b5b2a2c173aab3fd14aac6cf5e90ad3bf58fa7d")
;; turning ^L visual
(package! page-break-lines :pin "cc283621c64e4f1133a63e0945658a4abecf42ef")
;; interactive find/fd
(package! find-file-in-project :pin "38ebbc21e32a6e616d315f5f898df4ca825f916d")
;; org-transclusion
(package! org-transclusion
  :recipe (:host github
           :repo "nobiot/org-transclusion"
           :branch "main"
           :depth 1)
  :pin "1515c7a1e0765eaf1487eddeed2b95ee1fa75f28")
(package! vterm-toggle :pin "02519323aa0a2e6af641cd205b230f48a04a5ca3")
;; special links/blocks in org-mode
(package! org-special-block-extras :pin "2e397dac372ff75ea6ee6eed9ae3a0540a082af8")
;; search org tasks (heading and contents)
(package! helm-org-rifle :pin "5e13a0e59606b40088927870dab116a8eab8e66c")
;; dashboard for elfeed
(package! elfeed-dashboard :pin "26ff3573efce3cb66c8814854a2983a69683af09")
;; using cheat.sh
(package! cheat-sh :pin "33bae22feae8d3375739c6bdef08d0dcdf47ee42")
(package! org-mru-clock :pin "a74322f0cfd6e52151f9bb8d4f90833330f69120")
(package! crux :pin "6bfd212a7f7ae32e455802fde1f9e3f4fba932a0")
;; auto toggle org-latex preview when cursor is on
(package! org-fragtog :pin "680606189d5d28039e6f9301b55ec80517a24005")
;; horizontal scroll
(package! phscroll
  :recipe (:host github :repo "misohena/phscroll") :pin "c0f79ee749d38b8e1f832179a32ddc100195ad1a")
(package! emms :pin "22f3d9e5359c565b33f55715f90fbde35e4f675e")
(package! helm-emms :pin "aefa44ab77808626c4951be2df49a2eab7820805")
(package! ivy-emms :pin "dfde98c3bdad8136709eac8382ba048fafdcc6ac")
(package! org-autolist :pin "da3a45f95f2e9f7281d533d1e5cec1764ae26a9c")
;; realgud takes forever to build
(package! realgud :disable t)
;; zap to char with ace/avy
(package! ace-jump-zap :pin "52b5d4c6c73bd0fc833a0dcb4e803a5287d8cae8")
(package! ace-isearch :pin "8439136206a42e41ef95af923e0dc3bbd4fa306c")

(package! org-appear :pin "8dd1e564153d8007ebc4bb4e14250bde84e26a34")
;; snippets for LaTeX and other major-modes
(package! aas :pin "566944e3b336c29d3ac11cd739a954c9d112f3fb")
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
(package! separedit :pin "454c9a3561acca3d57cce6ddb356f686b3d8cbee")

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
