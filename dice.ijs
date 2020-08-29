NB. sketches and artifacts from coming up with a way to generate
NB. boards
load 'joggle.ijs viewmat'
NB. standard boggle dice
D =: _6 ]\  'NAEAEGEGNWEHCSOAHPLVERDYTOATOWPKAFFSHRVTWEHQUMNI'
D =: D,($D)$'EITSSORLTYETTITSYDLXEDIRTOIMCUBAOBOJNLNHZRENSIEU'

HDR =: ;: 'LETTER STANDARD SHAKESPEARE'
AZ =: a.{~65+i.26
FQS =: AZ ;"0 (%+/) (+/^:2)"_1 AZ =/ D
SKS =: (#~ e.&AZ) toupper 1!:1 < jpath '~/code/J-esquisse/data/shakespeare.txt'
FQS =: FQS ,. <"0 (%+/) > {:"1 /:~ ({.;#)/.~ SKS
NB. (0 0 0,:255 255 255) viewmat > }."1 FQS
HDR , FQS

coinsert 'joggle'


BW =: Q^:_1 &.> (#~ 8<#&>) WS
ROLL =: 3 : 0
4 4 RB > ({~ ?@#) BW
)

ORR =: ({~?~@#) {"0 1~ [: ? #"1
OR =: 3 : '4 4 $ ORR D'

