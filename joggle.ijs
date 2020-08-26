coclass 'joggle'

W =: = WS {~ :: 0: (WS=: <;._2 (1!:1) < 'collins-words.txt')&I.
P =: = PS {~ :: 0: (PS=: <;._2 (1!:1) < 'collins-prefixes.txt')&I.
R =: ({~?~@#) {"0 1~ [: ? #"1
D =: _6 ]\  'NAEAEGEGNWEHCSOAHPLVERDYTOATOWPKAFFSHRVTWEHQUMNI'
D =: D,($D)$'EITSSORLTYETTITSYDLXEDIRTOIMCUBAOBOJNLNHZRENSIEU'
S =: 0 0 0 1 1 2 3 5 11 {~ 8 <. #

G =: [: <@-.&_1"1 @ |: [: ;"_1 (<:3 3#:4-.~i.9)&(|.!._1)
QU =: 3 : '''U'' (1+I.b)} y #~ 1+b=. ''Q''=y'
Q =: QU ^: ('Q'&e.)
L =: 1 : '(<@Q)"1 @ ({&u)'
E0 =: 2 : '< (#~ P @ (u L)) y,"_ 0/ y -.~ ({:y) {:: v'
E =: 2 : '([: < [: ; u E0 v"1 @ >) ^: (0<#@;) y'
O =: (\: #&>) @ (/:~) @ ~.
boggle =: 3 : 0
  O (#~ W) ; (,y) L"1 &.> (,y) E (G i.$y) ^: a: <,:"0 i.#,y
)

NB. x is shape, y is word. output random board containing string y
WA =: 4 : 'y , ({~ ?@#) y -.~ ({:y) {:: x'
RW =: 4 : 'try. (G i.x)&WA ^: (<:y) ? */ x catch. x RW y end.'
B =: 4 : 0
  assert. (#y) <: n=.*/x
  x $ toupper (y,R(n-#y)$D) ((p-.~i.n),~p=.x RW #y)} n $ y
)

NB. zdefs
shake_board_z_ =: 3 : '4 4 $ R_joggle_ D_joggle_'
board_z_ =: B_joggle_
boggle_z_ =: boggle_joggle_
score_z_ =: S_joggle_
