coclass 'joggle'

WL =: (<_1{.a.),~<;._2@(1!:1)@<@jpath@('~/code/joggle/'&,)
'WS PS' =: WL &.> 'collins-words.txt';'collins-prefixes.txt'
W =: = WS {~ WS&I.
P =: = PS {~ PS&I.

G =: [: <@-.&_1"1 @ |: [: ;"_1 (<:3 3#:4-.~i.9)&(|.!._1)
QU =: 3 : 0 ^: ('Q'&e.)
  'U' (1+I.b)} y #~ 1+b=. 'Q'=y
)
L =: 1 : '<@QU"1 @ ({&u)'
A =: [ ,"_ 0/ [ -.~ ] {::~ {:@[
E =: 2 : '([: < [: (#~ P @ (u L)) [: ; <@(A&v)"1 @ >) ^: (0<#@;) y'
O =: (\: #&>) @ (/:~) @ ~.
BB =: 3 : 'O (#~ W) ; (,y) L"1 &.> (,y) E (G i.$y) ^: a: <,:"0 i.#,y'

R =: ({~?~@#) {"0 1~ [: ? #"1
D =: _6 ]\  'NAEAEGEGNWEHCSOAHPLVERDYTOATOWPKAFFSHRVTWEHQUMNI'
D =: D,($D)$'EITSSORLTYETTITSYDLXEDIRTOIMCUBAOBOJNLNHZRENSIEU'
S =: 0 0 0 1 1 2 3 5 11 {~ 8 <. #

RW =: 4 : 0
  try. (({~ ?@#) @ A&(G i.x)) ^: (<:y) ? */ x catch. x RW y end.
)
NB. output board with shape x containing word y
RB =: 4 : 0
  assert. (#y) <: n=.*/x
  x $ toupper (y,R(n-#y)$D) ((p-.~i.n),~p=.x RW #y)} n $ y
)

shake_board_z_ =: 3 : '4 4 $ R_joggle_ D_joggle_'
board_z_ =: RB_joggle_
boggle_z_ =: BB_joggle_
score_z_ =: S_joggle_