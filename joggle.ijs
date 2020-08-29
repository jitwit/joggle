coclass 'joggle'

WL =: (<_1{.a.),~<;._2@(1!:1)@<@jpath@('~/code/joggle/'&,)
W =: = WS {~ (WS=: WL 'collins-words.txt')&I.
P =: = PS {~ (PS=: WL 'collins-prefixes.txt')&I.

G =: [: <@-.&_1"1 @ |: [: ;"_1 (<:3 3#:4-.~i.9)&(|.!._1)
QU =: 3 : 0 ^: ('Q'&e.)
  'U' (1+I.b)} y #~ 1+b=. 'Q'=y
)
Q =: QU :. (#~ [: -. _1 |. 'QU'&E.)
L =: 1 : '<@Q"1 @ ({&u)'
A =: [ ,"_ 0/ [ -.~ ] {::~ {:@[
E =: 2 : '([: < [: (#~ P @ (u L)) [: ; <@(A&v)"1 @ >) ^: (0<#@;)'
BP =: 3 : '(,y) E (G i.$y) ^: a: <,:"0 i.#,y'
BB =: 3 : '(\:#&>) /:~ ~. (#~ W) ; (,y) L"1 &.> BP y'

BW =: Q^:_1 &.> (#~ 10<#&>) WS
S =: 0 0 0 1 1 2 3 5 11 {~ 8 <. #
RW =: 4 : 0
  try. (({~ ?@#) @ A&(G i.x)) ^: (<:y) ? */ x catch. x RW y end.
)
NB. output board with shape x containing word y
RB =: 4 : 0
  assert. (#y=.Q^:_1 y) <: n=.*/x
  x $ toupper (y,a.{~65+?(n-#y)$26) ((p-.~i.n),~p=.x RW #y)} n $ y
)
RL =: 3 : 'y RB > ({~ ?@#) BW'

shake_z_ =: RL_joggle_
board_z_ =: RB_joggle_
boggle_z_ =: BB_joggle_
score_z_ =: S_joggle_