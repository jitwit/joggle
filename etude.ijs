NB. discovering some boggle tips
coinsert 'joggle' [ require 'joggle.ijs'
XE =: |."1 (- +/"1 ' ' = EX) |."0 1 EX

NB. top x length y prefixes to know?
prefixes =: {{ ,.&.>(<@:>)"1 |: x ];.0 \:~ (#;{.)/.~ y {."1 (#~ y<L) EX }}
suffixes =: {{ ,.&.>(<@:>)"1 |. &.> |: x ];.0 \:~ (#;{.)/.~ y {."1 (#~ y<L) XE }}

(;: 'prefixes suffixes') ,. ,"_1/ (10&(prefixes ,: suffixes))"0 ] 3 + i. 6
