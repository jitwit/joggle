load 'joggle.ijs'

NB. check
test =: 3 : 0
assert. 24 = +/ score & > boggle 4 4 $ 'DEMODEMODEMODEMO'
assert. 1254 = # boggle 4 4 $ 'PSLMEAIARNTRGESO'
assert. 189 = # boggle 8 2 $ 'PSLMEAIARNTRGESO'
assert. 318 = # boggle 4 4 $ 'YVUPESTAGOLEOWNV'
assert. 8 = # boggle 2 2 $ 'ABBA'
assert. 25 = # boggle 3 2 $ 'GOOGLE'
assert. (<'JINGO') e. boggle 4 4 board 'jingo'
assert. (<'LAMBAST') e. boggle 4 4 board 'lambast'
assert. (<'INERTIA') e. boggle 4 4 board 'inertia'
assert. (<'HYPNOTIZABILITY') e. boggle 4 4 board 'HYPNOTIZABILITY'
assert. (<'FRUCTIFICATIONS') e. boggle 4 4 board 'FRUCTIFICATIONS'
assert. (<'DISEMBARKATIONS') e. boggle 4 4 board 'DISEMBARKATIONS'
assert. (<'DISCOUNTENANCES') e. boggle 4 4 board 'DISCOUNTENANCES'
'aok'
)

test''

