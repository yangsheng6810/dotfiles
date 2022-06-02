;; -*- no-byte-compile: t; -*-
;;; .doom.d/packages.el

;;; Examples:
;; (package! some-package)
;; (package! another-package :recipe (:host github :repo "username/repo"))
;; (package! builtin-package :disable t)

;; (package! cnfonts)
(package! eterm-256color :pin "c9cfccef03e730f7ab2b407aada3df15ace1fe32")
(package! olivetti :pin "8d287a80c5e3d72ac01b56c8afe60b01f18500b4")
(package! helm-bibtex :pin "ce8c17690ddad73d01531084b282f221f8eb6669")
(package! notmuch :pin "e3ad0087f3453c89871acac8b11da8bab1ac54df")
(package! poporg :pin "2c58d68c81ecca4140bf179f19ed153ec804b65a")
(package! posframe :pin "c91d4d53fa479ceb604071008ce0a901770eff57")
(package! company-posframe :pin "df0e34f69dc8e9aaa1a6c5e88783898f4ae3f2df")
(package! ivy-posframe :pin "533a8e368fcabfd534761a5c685ce713376fa594")
(package! ellocate :pin "81405082f68f0577c9f176d3d4f034a7142aba59")
(package! ivy-rich :pin "600b8183ed0be8668dcc548cc2c8cb94b001363b")
(package! vlf :pin "cc02f2533782d6b9b628cec7e2dcf25b2d05a27c")
(package! beginend :pin "bbcfdc0909c20ddee41e95b7ade7de63af73b220")
; (package! beacon)
(package! diminish :pin "6b7e837b0cf0129e9d7d6abae48093cf599bb9e8")
(package! spacemacs-theme :pin "a09347a354a14f5407e99fa730e01345d03e03fd")
(package! rainbow-mode :pin "949166cc0146bc9fabf74ce70c1c4a097f4cffd4")
(package! rainbow-delimiters :pin "a32b39bdfe6c61c322c37226d66e1b6d4f107ed0")

(package! org-pdfview :pin "8b71f313634b95a1fac42fc701934fd796565f3b")
(package! org-ref :pin "b5aea83078acb51688c2ac66b4fac419aecbd329")
(package! general :pin "9651024e7f40a8ac5c3f31f8675d3ebe2b667344")
(package! ace-pinyin :pin "47662c0b05775ba353464b44c0f1a037c85e746e")
(package! esup :pin "4b49c8d599d4cc0fbf994e9e54a9c78e5ab62a5f")
(package! evil-terminal-cursor-changer :pin "24755a18a311226933946f7218684dab5960ebc9")
(package! vimrc-mode :pin "13bc150a870d5d4a95f1111e4740e2b22813c30e")
(package! cal-china-x :pin "94005e678a1d2522b7a00299779f40c5c77286b8")
(package! highlight-indentation :pin "d88db4248882da2d4316e76ed673b4ac1fa99ce3")
(package! helm-bibtex :pin "ce8c17690ddad73d01531084b282f221f8eb6669")
(package! counsel-etags :pin "c74ae94297c4a2dc0b6878c2e9460a4f386158d4")
(package! google-this :pin "8a2e3ca5da6a8c89bfe99a21486c6c7db125dc84")
(package! zeal-at-point :pin "0fc3263f44e95acd3e9d91057677621ce4d297ee")
(package! engine-mode
  :recipe (:host github :repo "hrs/engine-mode" :branch "main")
  :pin "e0910f141f2d37c28936c51c3c8bb8a9ca0c01d1")
(package! youdao-dictionary :pin "8a4815a43565b9bfd257246e4895b8bfafb9d573")
(package! notmuch :pin "e3ad0087f3453c89871acac8b11da8bab1ac54df")
(package! org-mime :pin "a7bf07316f93015e4f853ea0fc5b8d05b4a7695d")
(when (featurep! :completion ivy)
  (package! counsel-notmuch :pin "a4a1562935e4180c42524c51609d1283e9be0688"))
(package! ox-hugo :pin "262b7b432a7f81124fe181c07b57a4f42b6eedc9")
(package! org-gcal :pin "554c48fb57dc46877202028019197b0699961ca0")
(package! telega
  :pin "25e07c86c43af1cc949cb6ac6c2ca63bfb7c5e78")
;; (package! slack)
(package! popwin :pin "f90f3a09622993bf34704bb11c24984f6b1f10e2")
(package! org-noter :pin "9ead81d42dd4dd5074782d239b2efddf9b8b7b3d")
(package! recursive-narrow :pin "5e3e2067d5a148d7e64e64e0355d3b6860e4c259")
(package! ranger :pin "2498519cb21dcd5791d240607a72a204d1761668")
(package! langtool :pin "8276eccc5587bc12fd205ee58a7a982f0a136e41")
(package! ox-reveal :pin "862b41df7734f57019543f6bd82ff7dad7183358")
(package! org-re-reveal :disable t)
(package! hydra-posframe :recipe (:host github :repo "Ladicle/hydra-posframe") :pin "94405b5fbec1ae9447c976c3deef41043b9b7de3")

(package! hl-line :disable t)
(package! solaire-mode :disable t)
;; (package! beancount
;;   :recipe (:host github
;;            :repo "beancount/beancount"
;;            :files ("edtiors/emacs/beancount.el")
;;            :depth 1))
(package! org-protocol-capture-html
  :recipe (:host github
           :repo "alphapapa/org-protocol-capture-html")
  :pin "3359ce9a2f3b48df26329adaee0c4710b1024250")
(package! doct :pin "4033a8fd8681d3989550f7a2532d6b4e3c45bfe8")
;; Remove annoying indentation in org-mode
;; (package! org-indent :disable t)
(package! wucuo :pin "09fc58a02621b6c9615f8289c457e30ca6f63bcb")
(package! valign
  :recipe (:host github :repo "casouri/valign")
  :pin "be82f6048118cbc81e6e029be1965f933612d871")
(package! package-lint :pin "80a9d9815ab2919c992ad29ae4846443dec43a35")
(package! org-latex-impatient
  :recipe (:host github :repo "yangsheng6810/org-latex-instant-preview" :branch "develop")
  :pin "586735f18863dfe4ab54ccf3668813e2eb8b5e89")
(package! cdlatex :pin "8e963c68531f75e459e8ebe7a34fd3ba9d3729a0")
;; show latex in eww
(package! texfrag :pin "a5f59e0c5f43578f139a2943bd08e5b3140f4c2b")
(package! auto-dim-other-buffers :pin "33b5f88b799a17947c266b04ad59462c5aeb4ed7")
(package! edit-indirect :pin "e3d86416bcf8ddca951d7d112e57ad30c5f9a081")
(package! deft :pin "28be94d89bff2e1c7edef7244d7c5ba0636b1296")

(package! org-super-agenda :pin "3108bc3f725818f0e868520d2c243abe9acbef4e")
(package! el-search :pin "eabb699d135e73d7bc4c8b54ed4ebf79f6e176bd")
(package! git-messenger :pin "eade986ef529aa2dac6944ad61b18de55cee0b76")

;; (package! xenops)

(package! flycheck-package :pin "615c1ed8c6fb7c73abec6aaa73d3fef498d231bc")
(package! chinese-yasdcv :pin "5ab830daf1273d5a5cddcb94b56a9737f12d996f")
;; for query org files
(package! org-ql :pin "46f523d94a376b168176c75bbd0e3e0d00e61170")
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
  :pin "4c41b8b56de58a2cea2114ff35ee386259c3ba61")

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
(package! slime :pin "6ef28864d4a6b4d9390dbd0cac64f2a56582682d")
;; for rx explanation
(package! pcre2el :pin "0b5b2a2c173aab3fd14aac6cf5e90ad3bf58fa7d")
;; turning ^L visual
(package! page-break-lines :pin "cc283621c64e4f1133a63e0945658a4abecf42ef")
;; interactive find/fd
(package! find-file-in-project :pin "204b3d489a606c6e7b83518e46be3bbcef1bcb3d")
;; fill org table
(package! ftable
  :recipe (:host github :repo "casouri/ftable")
  :pin "96a0475871b1642582a0c0fb5a361a8af0dd5923")
;; org-transclusion
(package! org-transclusion
  :recipe (:host github
           :repo "nobiot/org-transclusion"
           :branch "main"
           :depth 1)
  :pin "ccc0aaa72732ea633bf52bcc8a0345cd3ac178fd")
(package! vterm-toggle :pin "644e9df9f741c3338c248291799375a1778eb98b")
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
(package! org-autolist :pin "48666001f9ae1fdf9e295410d5a494e79284e2f7")
;; realgud takes forever to build
(package! realgud :disable t)
;; zap to char with ace/avy
(package! ace-jump-zap :pin "52b5d4c6c73bd0fc833a0dcb4e803a5287d8cae8")
(package! ace-isearch :pin "8439136206a42e41ef95af923e0dc3bbd4fa306c")

(package! org-appear :pin "8dd1e564153d8007ebc4bb4e14250bde84e26a34")
;; snippets for LaTeX and other major-modes
(package! aas :pin "8ce591165e0bdc1a6ea76e78bc10c6b55bab9634")
(package! laas :pin "b372f9a44bea03cce09b20cd2409e3ae3fa2d651")
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
  :pin "4a4e040fcede0c320e860571d5e96100cac05bb5")
;; For editing a block in another mode
(package! separedit :pin "c3c493a700a9bf8078d65b23b9ae1aad3774b8d9")

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
