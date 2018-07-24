;;; `cnfonts--custom-set-fontsnames' 列表有3个子列表，第1个为英文字体列表，第2个为中文字体列表，
;;; 第3个列表中的字体用于显示不常用汉字，每一个字体列表中，*第一个* *有效并可用* 的字体将被使用。
;;; 将光标移动到上述列表中，按 `C-c C-c' 可以测试字体显示效果。另外，用户可以通过命令
;;; `cnfonts-insert-fontname’ 来选择一个 *可用* 字体，然后在当前光标处插入其字体名称。
(setq cnfonts--custom-set-fontnames
      '(
        ("Fira Code" "AnonymousPro" "Fantasque Sans Mono" "Anonymous Pro" "Source Code Pro" "Liberation Mono" "Ubuntu Mono" "Courier New" "Monaco" "DejaVu Sans Mono" "Droid Sans Mono" "Consolas" "PragmataPro" "Courier" "MonacoB" "MonacoB2" "MonacoBSemi" "Droid Sans Mono Pro" "Inconsolata" "Lucida Console" "Envy Code R" "Andale Mono" "Lucida Sans Typewriter" "monoOne" "Lucida Typewriter" "Panic Sans" "Hack" "Bitstream Vera Sans Mono" "HyperFont" "PT Mono" "Ti92Pluspc" "Excalibur Monospace" "Menlof" "Cousine" "Fira Mono" "Lekton" "M+ 1mn" "BPmono" "Free Mono" "ProFont" "ProFontWindows" "Latin Modern Mono" "Code 2002" "ProggyCleanTT" "ProggyTinyTT" "Iosevka Term" "Inconsolata-dz" "American Typewriter" "Menlo" "Anka/Coder Condensed" "M+ 1m" "CamingoCode" "Office Code Pro" "Roboto Mono" "Input Mono" "Courier Prime Code" "NanumGothicCoding" "Monoid" "Edlo" "Iosevka" "Mononoki" "Robot Mono" "Fantasque" "Go Mono" "Noto Sans Mono CJK" "InputMonoCompressed" "Hasklig" "Terminus" "FantasqueSansMono" "3270" "Arimo" "D2Coding" "Inconsolata-g" "ProFont for Powerline" "Meslo" "Meslo Dotted" "Noto Mono" "Symbol Neu" "Tinos" "Space Mono")
        ("Source Han Sans CN" "Source Han Serif CN" "WenQuanYi Zen Hei Mono" "WenQuanYi Micro Hei Mono" "微软雅黑" "文泉驿等宽微米黑" "文泉驿等宽正黑" "Source Han Sans" "Source Han Serif" "Noto Sans MOno CJK SC" "Microsoft Yahei" "Ubuntu Mono" "黑体" "SimHei" "宋体" "SimSun" "新宋体" "NSimSun" "Hiragino Sans GB")
        ("HanaMinB" "SimSun-ExtB" "MingLiU-ExtB" "PMingLiU-ExtB" "MingLiU_HKSCS-ExtB")
        ))

;;; `cnfonts--custom-set-fontsizes' 中，所有元素的结构都类似：(英文字号 中文字号 EXT-B字体字号)
;;; 将光标移动到各个数字上，按 C-c C-c 查看光标处字号的对齐效果。
;;; 按 C-<up> 增大光标处字号，按 C-<down> 减小光标处字号。
(setq cnfonts--custom-set-fontsizes
      '(
        (9    12.0 12.0)
        (10   13.5 13.5)
        (11.5 15.0 15.0)
        (12.5 16.5 16.5)
        (14   18.0 18.0)
        (15   19.5 19.5)
        (16   21.0 21.0)
        (18   24.0 24.0)
        (20   26.5 26.5)
        (22   28.5 28.5)
        (24   31.5 31.5)
        (26   34.0 34.0)
        (28   37.0 37.0)
        (30   40.0 40.0)
        (32   42.0 42.0)
        ))
