coclass 'joggle'

NB. reading and querying word lists
WL =: ' ' ,.~^:2 (_1{.a.),~];._2@(1!:1)@<
NL =: ''$~0,{: $ PF=: WL'collins-prefixes.txt'[EX=: WL'collins-words.txt'
L =: {:@$ - +/"1@(' '&=)
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
B =: {{ (\: L) /:~ (#~ W) ~. Q ; ({&(,y)) &.> S y }}

NB. generating boards
BW =: (#~ 10 < L@(Q^:_1)) EX
SC =: 0 0 0 1 1 2 3 5 8 13 {~ 8 <. #
RW =: {{try. (({~ ?@#) @ A&(G x)) ^: (<:y) ? */ x catch. x RW y end.}}
RB =: 4 : 0
  assert. (#y=.Q^:_1 y) <: n=.*/x
  x $ toupper (y,a.{~65+?(n-#y)$26) ((p-.~i.n),~p=.x RW #y)} n $ y
)
RL =: {{ y RB > ({~ ?@#) BW }}

DC =:          'NAEAEGEGNWEHCSOAHPLVERDYBAOBOJNLNHZRENSIEUTOIMCU'
DC =: _6 ]\ DC,'TOATOWPKAFFSHRVTWEHQUMNIEITSSORLTYETTITSYDLXEDIR'
SH =: {{y $ , ({~?~@#)({~?@$)"1 (*/y) $ ({~ ?~@#) DC}}

NB. z-definitions that are not cryptic
shake_z_ =: SH_joggle_
bake_z_ =: RL_joggle_
board_z_ =: RB_joggle_
boggle_z_ =: B_joggle_
score_z_ =: SC_joggle_
dice_z_ =: DC_joggle_
