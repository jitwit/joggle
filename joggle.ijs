coclass 'joggle'

NB. reading and querying word lists
WL =: ' ' ,.~^:2 (_1{.a.),~];._2@(1!:1)@<
NL =: ''$~0,{: $ PF=: WL'collins-prefixes.txt'[EX=: WL'collins-words.txt'
L =: {:@$ - +/@(' '&=)
W =: (-:"1 EX {~ EX&I.) @: (NL&,)
P =: (-:"1 PF {~ PF&I.) @: (NL&,)

NB. graphs for boards & expansions for paths
G =: [: <@-.&_1"1 @ |: [: ;"_1 (<:3 3#:4-.~i.9) |.!._1 i.
A =: [ ,"_ 0/ [ -.~ ] {::~ {:@:[

NB. handling Qs
QU =: {{ 'U' (1+I.b)} y #~ 1+b=. 'Q'=y }} ^: ('Q'&e.)
Q =: (QU :. (#~ [: -. _1 |. 'QU'&E.))"1

NB. the search
E =: {{ ([: (#~ P @: Q @ ({&u)) [: ; <@(A&v)"1) ^: (0<#) &. > }}
S =: {{ (,y) E (G$y) ^: a: <,.i.#,y }}
B =: {{ (\:#&>) /:~ (<@-.&' ')"1 (#~ W) ~. Q ; ({&(,y)) &.> S y }}

NB. generating boards
BW =: Q^:_1 &.> (#~ 10<#&>) (({:$EX) - +/"1 ' ' = EX)
SC =: 0 0 0 1 1 2 3 5 8 13 {~ 8 <. #
RW =: {{try. (({~ ?@#) @ A&(G x)) ^: (<:y) ? */ x catch. x RW y end.}}
RB =: 4 : 0
  assert. (#y=.Q^:_1 y) <: n=.*/x
  x $ toupper (y,a.{~65+?(n-#y)$26) ((p-.~i.n),~p=.x RW #y)} n $ y
)
RL =: {{ y RB > ({~ ?@#) BW }}

NB. z-definitions that are not cryptic
shake_z_ =: RL_joggle_
board_z_ =: RB_joggle_
boggle_z_ =: B_joggle_
score_z_ =: SC_joggle_
