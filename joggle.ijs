coclass 'joggle'

WL =: (<_1{.a.),~<;._2@(1!:1)@<
W =: = WS {~ (WS=: WL 'collins-words.txt')&I.
P =: = PS {~ (PS=: WL 'collins-prefixes.txt')&I.

G =: [: <@-.&_1"1 @ |: [: ;"_1 (<:3 3#:4-.~i.9)&(|.!._1)
QU =: {{ 'U' (1+I.b)} y #~ 1+b=. 'Q'=y }} ^: ('Q'&e.)
Q =: QU :. (#~ [: -. _1 |. 'QU'&E.)
L =: {{ <@Q"1 @: ({&u) }}
A =: [ ,"_ 0/ [ -.~ ] {::~ {:@:[
E =: {{ ([: (#~ P @: (u L)) [: ; <@(A&v)"1) ^: (0<#) &. > }}
S =: {{ (,y) E (G i.$y) ^: a: <,.i.#,y }}
B =: {{ (\:#&>) /:~ ~. (#~ W) ; (,y) L"1 &.> S y }}

BW =: Q^:_1 &.> (#~ 10<#&>) WS
SC =: 0 0 0 1 1 2 3 5 8 13 {~ 8 <. #
RW =: {{try. (({~ ?@#) @ A&(G i.x)) ^: (<:y) ? */ x catch. x RW y end.}}

RB =: 4 : 0
  assert. (#y=.Q^:_1 y) <: n=.*/x
  x $ toupper (y,a.{~65+?(n-#y)$26) ((p-.~i.n),~p=.x RW #y)} n $ y
)
RL =: {{ y RB > ({~ ?@#) BW }}

shake_z_ =: RL_joggle_
board_z_ =: RB_joggle_
boggle_z_ =: B_joggle_
score_z_ =: SC_joggle_
