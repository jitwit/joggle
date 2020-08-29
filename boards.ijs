load 'joggle.ijs'
9!:1 <. 1e12 * 1 | 6!:1 ''
bs =: shake"_1 ] 10000 $ ,: 4 4
(;:^:_1 <"1 ,. bs) 1!:2 < 'boards.txt'

