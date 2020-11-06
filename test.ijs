load 'joggle.ijs'

mem =: ({.e.}.) @ ,

cases =: 0 : 0
'QUADS' mem boggle 2 2 $ 'QADS'
'JINGO' mem boggle 4 4 board 'jingo'
'LAMBAST' mem boggle 4 4 board 'lambast'
'INERTIA' mem boggle 4 4 board 'inertia'
'HYPNOTIZABILITY' mem boggle 4 4 board 'HYPNOTIZABILITY'
'FRUCTIFICATIONS' mem boggle 4 4 board 'FRUCTIFICATIONS'
'DISEMBARKATIONS' mem boggle 4 4 board 'DISEMBARKATIONS'
'DISCOUNTENANCES' mem boggle 4 4 board 'DISCOUNTENANCES'
)

test =: {{0!:2 cases}}

bench =: 3 : 0
load 'stats/bonsai'
bb1=: 4 4 $ 'YVUPESTAGOLEOWNV'
bb2=: 4 4 $ 'ODOEBIRNETYTKGNI'
bb3=: 4 4 $ 'EJTUKLRPGBAEBOIF'
echo bonsai 'boggle bb1'
echo bonsai 'boggle bb2'
echo bonsai 'boggle bb3'
)

test '' NB. requires j902-beta-i
NB. bench ''

(,shake 70 70) 1!:2 < 'board.txt'

$ boggle 70 70 $ 1!:1 < 'board.txt'
