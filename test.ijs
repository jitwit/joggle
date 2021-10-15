load 'joggle.ijs'

g33=:1 3 4;0 2 3 4 5;1 4 5;0 1 4 6 7;0 1 2 3 5 6 7 8;1 2 4 7 8;3 4 7;3 4 5 6 8;4 5 7

cases =: 0 : 0
g33 -: G_joggle_ 3 3
P_joggle_ 'ABROGATIO'
-. W_joggle_ 'ABROGATIO'
W_joggle_ 'ABROGATION'
0 e. ({:"1) 1 A_joggle_ G_joggle_ 4 4
-. 0 e. ({:"1) 0 1 A_joggle_ G_joggle_ 4 4
'SQUAD' -: Q_joggle_ 'SQAD'
'QUAQUA' -: Q_joggle_ 'QAQA'
'SQAD' -: Q_joggle_^:_1 'SQUAD'
0 -: SC_joggle_ ''
1 -: SC_joggle_ 'CAT'
1 -: SC_joggle_ 'CATS'
2 -: SC_joggle_ 'FLAKS'
)

test =: 3 : 0
for_b. BW_joggle_ {~ y ?. # BW_joggle_ do. NB. echo b
  assert. b ({.e.}.)@, boggle 4 4 board b =. b -. ' '
end.
0!:2 cases
)

bench =: 3 : 0
load 'stats/bonsai'
bb1=: 4 4 $ 'YVUPESTAGOLEOWNV'
bb2=: 4 4 $ 'ODOEBIRNETYTKGNI'
bb3=: 4 4 $ 'EJTUKLRPGBAEBOIF'
echo bonsai 'boggle bb1'
echo bonsai 'boggle bb2'
echo bonsai 'boggle bb3'
)

test 100 NB. requires at least j902-beta-i
bench ''
