STRO start, d
DECI num, d ;condition (user input)
LDA 0x0000, i
STA inc, s ; start acumulator and inc off at 0
while: LDA inc, s ;increment variable on stack
ADDA 1, i
STA inc, s
DECO inc, s ;print progress
CHARO "\n", i ;newline char
CPA num, d ;compare with user input
BRLT while ;end loop when varible >= user input
STRO str, d;print confirmation of end
STOP

num: .BLOCK 2
inc: .BLOCK 2 
str: .ASCII "The loop has ended \x00"
start: .ASCII "Please enter a number: \x00"
.END