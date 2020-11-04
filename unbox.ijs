NB. comparing speed of working with boxed strings vs massive unboxed array
w =: {: $ ud =: ];._2 (1!:1) < 'collins-words.txt'
w =: {: $ up =: ];._2 (1!:1) < 'collins-prefixes.txt'
bd =: <;._2 (1!:1) < 'collins-words.txt'
bp =: <;._2 (1!:1) < 'collins-prefixes.txt'
NB. space is way better. crux will be query
7!:5 ;: 'ud up bd bp'
el =: 0 15$''

S =: ud I. (el&,)
NB. query unboxed exact is faster
EU =: (-:"1 ud {~ ud&I.) @: (el&,)
PU =: (-:"1 up {~ up&I.) @: (el&,)
EB =: (= bd {~ bd&I.)
PB =: (= bp {~ bp&I.)

egu =: > egb =: ;: 'ABBA BLAST ASKING ICONOCLA ICONOCLAT'

NB. prefix when index of disagree, if any, is space in argument x
NB. alternative is using the prefix crap
agree =: {{ ' ' = {. x #~ -. x = y }}
agree =: ' ' = [: {. [ #~ [: -. =
NB. PU =: (agree"1 ud {~ ud&I.) @: (el&,)
,. (egu,el) ; PU egu


'EB egb' bonsai 'PU egu'
'PB egb' bonsai 'PU egu'


