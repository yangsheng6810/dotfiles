#!/bin/bash
FROM_ENCODING="euc-jp"
# FROM_ENCODING="shift_jis"
convmv -f utf8 -t iso88591 *.cue --notest --nosmart && convmv -f $FROM_ENCODING -t utf8 *.cue --notest --nosmart;
