coclass 'joggle'

W =: = WS {~ :: 0: (WS=: <;._2 (1!:1) < 'collins-words.txt')&I.
P =: = PS {~ :: 0: (PS=: <;._2 (1!:1) < 'collins-prefixes.txt')&I.
R =: ({~?~@#) {"0 1~ [: ? #"1
DICE =: 'NAEAEGEGNWEHCSOAHPLVERDYTOATOWPKAFFSHRVTWEHQUMNI'
DICE =: _6 ]\ DICE,'EITSSORLTYETTITSYDLXEDIRTOIMCUBAOBOJNLNHZRENSIEU'
SCR =: 0 0 0 1 1 2 3 5 11 {~ 8 <. #

NH =: <:3 3#:4-.~i.9
G =: [: <@-.&_1"1 @ |: [: ;"_1 NH&(|.!._1)
QU =: 3 : 0
  (; ,&'U' &.> qs <;._2 y) , (1 i:~ qs=. 'Q'=y) }. y
)
Q =: QU ^: ('Q'&e.)
L =: 1 : '(<@Q)"1 @ ({&u)'
E0 =: 2 : '< (#~ P @ (u L)) y,"_ 0/ y -.~ ({:y) {:: v'
E =: 2 : '([: < [: ; u E0 v"1 @ >) ^: (0<#@;) y'
O =: (\: #&>) @ (/:~) @ ~.
boggle =: 3 : 0
  O (#~ W) ; (,y) L"1 &.> (,y) E (G i.$y) ^: a: <,:"0 i.#,y
)

WA =: 1 : 'y , ({~ ?@#) y -.~ ({:y) {:: u'
doit =: 1 : 'u :: $:'
RW0 =: 4 : 'try. (G i.x) WA ^: (<:y) ? */ x catch. x RW0 y end.'
NB. x is shape, y is word
board =: 4 : 0
  x $ toupper (y,R ((*/x)-#y)$DICE) ((p-.~i.n),~p=.x RW0 #y)} (n=.*/x) $ y
)

shake_board_z_ =: 3 : '4 4 $ R_joggle_ DICE_joggle_'
board_z_ =: board_joggle_
boggle_z_ =: boggle_joggle_
score_z_ =: SCR_joggle_
