coclass 'joggle'

NB. dictionary
WORDS =: <;._2 (1!:1) < 'collins-words.txt'
PREFX =: <;._2 (1!:1) < 'collins-prefixes.txt'
lookup =: [ = I.~ ({ :: 0:) ]

NB. dice/scoring
shake=: ({~?~@#) {"0 1~ [: ? #"1
dice4=: _6]\'NAEAEGEGNWEHCSOAHPLVERDYTOATOWPKAFFSHRVTWEHQUMNIEITSSORLTYETTITSYDLXEDIRTOIMCUBAOBOJNLNHZRENSIEU'
score=: 0 0 0 1 1 2 3 5 11 {~ 8 <. #

NB. solving
nhood=: <:3 3#:4-.~i.9
graph_of =: [: -.&_1 &.> [: , [: <"_2 [: ,"_2/ nhood |.!._1 ]
repQ =: 3 : 0
  (; ,&'U' &.> qs <;._2 y) , (1 i:~ qs=. 'Q'=y) }. y
)
subQ =: repQ ^: ('Q'&e.)
letters =: 1 : '(<@subQ)"1 @ ({&u)'
expand_path=: 2 : 0
  < (#~ lookup&PREFX @ (u letters)) y,"_ 0/ y -.~ ({:y) {:: v
)
expand =: 2 : 0
  ([: < [: ; u expand_path v"1 @ >) ^: (0<#@>@]) y
)
boggle =: 3 : 0
  ps =. < ,:"0 i. # b =. , y [ g =. graph_of i. $ y
  ws =. (#~ lookup&WORDS) ; b letters"1 &.> b expand g ^: a: ps
  (/: #&>) /:~ ~. ws
)

NB. misc
NB. shape x, length y
random_walk =: 4 : 0
  assert. (1 <: y) *. y <: */ x
  p =. ? # g =. graph_of i. x
  while. y > #p do.
    v =. p -.~ g {::~ {. p
    if. 0=#v do. p =. ? # g
    else. p =. p,~({~ ?@#)v end.
  end. p
)

NB. x is shape, y is word
board =: 4 : 0
  s =. (*/x) $ y
  out=. (i.$s) -. pth=. x random_walk #y
  ltr =. (#out) {. shake dice4
  x $ toupper (y,ltr) (pth,out)}s
)


shake_board_z_ =: 3 : '4 4 $ shake_joggle_ dice4_joggle_'
board_z_ =: board_joggle_
boggle_z_ =: boggle_joggle_
score_z_ =: score_joggle_
