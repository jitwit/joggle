load 'joggle.ijs'

cases =: 0 : 0
(<'QUADS') e. boggle 2 2 $ 'QADS'
(<'JINGO') e. boggle 4 4 board 'jingo'
(<'LAMBAST') e. boggle 4 4 board 'lambast'
(<'INERTIA') e. boggle 4 4 board 'inertia'
(<'HYPNOTIZABILITY') e. boggle 4 4 board 'HYPNOTIZABILITY'
(<'FRUCTIFICATIONS') e. boggle 4 4 board 'FRUCTIFICATIONS'
(<'DISEMBARKATIONS') e. boggle 4 4 board 'DISEMBARKATIONS'
(<'DISCOUNTENANCES') e. boggle 4 4 board 'DISCOUNTENANCES'
)

test =: {{0!:101 cases}}

bench =: 3 : 0
load 'stats/bonsai'
bb1=: 4 4 $ 'YVUPESTAGOLEOWNV'
bb2=: 4 4 $ 'ODOEBIRNETYTKGNI'
echo bonsai 'boggle bb1'
echo bonsai 'boggle bb2'
)

test'' NB. requires j902-beta-i
