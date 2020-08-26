coclass 'joggle'

W =: = WS {~ :: 0: (WS=: <;._2 (1!:1) < 'collins-words.txt')&I.
P =: = PS {~ :: 0: (PS=: <;._2 (1!:1) < 'collins-prefixes.txt')&I.
R =: ({~?~@#) {"0 1~ [: ? #"1
DICE =: 'NAEAEGEGNWEHCSOAHPLVERDYTOATOWPKAFFSHRVTWEHQUMNI'
DICE =: _6 ]\ DICE,'EITSSORLTYETTITSYDLXEDIRTOIMCUBAOBOJNLNHZRENSIEU'
SCR =: 0 0 0 1 1 2 3 5 11 {~ 8 <. #

NH =: <:3 3#:4-.~i.9
G =: [: <@-.&_1"1 @ |: [: ;"_1 NH&(|.!._1)
QU =: 3 : '''U'' (1+I.b)} y #~ 1+b=. ''Q''=y'
Q =: QU ^: ('Q'&e.)
L =: 1 : '(<@Q)"1 @ ({&u)'
E0 =: 2 : '< (#~ P @ (u L)) y,"_ 0/ y -.~ ({:y) {:: v'
E =: 2 : '([: < [: ; u E0 v"1 @ >) ^: (0<#@;) y'
O =: (\: #&>) @ (/:~) @ ~.
boggle =: 3 : 0
  O (#~ W) ; (,y) L"1 &.> (,y) E (G i.$y) ^: a: <,:"0 i.#,y
)

NB. x is shape, y is word
WA =: 4 : 'y , ({~ ?@#) y -.~ ({:y) {:: x'
RW =: 4 : 'try. (G i.x)&WA ^: (<:y) ? */ x catch. x RW0 y end.'
board =: 4 : 0
  x $ toupper (y,R((*/x)-#y)$DICE) ((p-.~i.n),~p=.x RW #y)} y $~ n=.*/x
)

shake_board_z_ =: 3 : '4 4 $ R_joggle_ DICE_joggle_'
board_z_ =: board_joggle_
boggle_z_ =: boggle_joggle_
score_z_ =: SCR_joggle_
