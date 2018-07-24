;;; `cnfonts--custom-set-fontsnames' 列表有3个子列表，第1个为英文字体列表，第2个为中文字体列表，
;;; 第3个列表中的字体用于显示不常用汉字，每一个字体列表中，*第一个* *有效并可用* 的字体将被使用。
;;; 将光标移动到上述列表中，按 `C-c C-c' 可以测试字体显示效果。另外，用户可以通过命令
;;; `cnfonts-insert-fontname’ 来选择一个 *可用* 字体，然后在当前光标处插入其字体名称。
(setq cnfonts--custom-set-fontnames
      '(
        ("Source Code Pro" "Monaco" "Fira Code" "Andale Mono" "Fantasque Sans Mono" "Ubuntu Mono" "Courier New" "Liberation Mono" "Anonymous Pro" "Bitstream Vera Sans Mono" "Droid Sans Mono" "DejaVu Sans Mono" "Consolas" "PragmataPro" "Courier" "MonacoB" "MonacoB2" "MonacoBSemi" "Droid Sans Mono Pro" "Inconsolata" "Lucida Console" "Envy Code R" "Lucida Sans Typewriter" "monoOne" "Lucida Typewriter" "Panic Sans" "Hack" "HyperFont" "PT Mono" "Ti92Pluspc" "Excalibur Monospace" "Menlof" "Cousine" "Fira Mono" "Lekton" "M+ 1mn" "BPmono" "Free Mono" "ProFont" "ProFontWindows" "Latin Modern Mono" "Code 2002" "ProggyCleanTT" "ProggyTinyTT" "Iosevka Term" "Inconsolata-dz" "American Typewriter" "Menlo" "Anka/Coder Condensed" "M+ 1m" "CamingoCode" "Office Code Pro" "Roboto Mono" "Input Mono" "Courier Prime Code" "NanumGothicCoding" "Monoid" "Edlo" "Iosevka" "Mononoki" "Robot Mono" "Fantasque" "Go Mono" "Noto Sans Mono CJK" "InputMonoCompressed" "Hasklig" "Terminus" "FantasqueSansMono" "AnonymousPro" "3270" "Arimo" "D2Coding" "Inconsolata-g" "ProFont for Powerline" "Meslo" "Meslo Dotted" "Noto Mono" "Symbol Neu" "Tinos" "Space Mono")
        ("Source Han Sans CN" "思源黑体 CN")
        ("HanaMinB" "SimSun-ExtB" "MingLiU-ExtB" "PMingLiU-ExtB" "MingLiU_HKSCS-ExtB")
        ))

;;; `cnfonts--custom-set-fontsizes' 中，所有元素的结构都类似：(英文字号 中文字号 EXT-B字体字号)
;;; 将光标移动到各个数字上，按 C-c C-c 查看光标处字号的对齐效果。
;;; 按 C-<up> 增大光标处字号，按 C-<down> 减小光标处字号。
(setq cnfonts--custom-set-fontsizes
      '(
        (9    10.5 10.5)
        (10   12.0 12.0)
        (11.5 13.5 13.5)
        (12.5 15.0 15.0)
        (14   16.5 16.5)
        (15   18.0 18.0)
        (16   19.5 19.5)
        (18   21.0 21.0)
        (20   24.0 24.0)
        (22   25.5 25.5)
        (24   28.5 28.5)
        (26   31.5 31.5)
        (28   33.0 33.0)
        (30   36.0 36.0)
        (32   39.0 39.0)
        ))
