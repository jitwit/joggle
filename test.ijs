load 'joggle.ijs'

AP =: {{ y e.~ (${:y) $!.' ' x }}

cases =: 0 : 0
'QUADS' AP boggle 2 2 $ 'QADS'
'JINGO' AP boggle 4 4 board 'jingo'
'LAMBAST' AP boggle 4 4 board 'lambast'
'INERTIA' AP boggle 4 4 board 'inertia'
'HYPNOTIZABILITY' AP boggle 4 4 board 'HYPNOTIZABILITY'
'FRUCTIFICATIONS' AP boggle 4 4 board 'FRUCTIFICATIONS'
'DISEMBARKATIONS' AP boggle 4 4 board 'DISEMBARKATIONS'
'DISCOUNTENANCES' AP boggle 4 4 board 'DISCOUNTENANCES'
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

