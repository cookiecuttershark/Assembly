main: STRO out, d 
DECI num, d ;user input 
DECI cond, d;condition (user input)
;test to find greater input
LDA num, d
CPA cond, d
BRLT else
;print out greater than or less than statements
DECO num, d
STRO grt, d
DECO cond, d
STOP
else: DECO num, d
STRO lst, d
DECO cond, d
STOP

cond: .BLOCK 2
num: .BLOCK 2
grt: .ASCII " is greater than or equal to \x00"
lst: .ASCII " is less than \x00"
out: .ASCII "Please enter two numbers: \x00"


.END