BR main;
in: .ASCII "Please enter an input from 0 to 4: \x00" 
num: .EQUATE 0
str1: .ASCII "Your number \x00" 
str2: .ASCII " matches switch case \x00"
oops: .ASCII " is not valid \x00"
fin: .ASCII "\nSwitch done. \x00"

main: STRO in, d ;input from 0-4
DECI num, s
STRO str1, d
LDX num, s
CPX 4,i
BRGT def
CPX 0, i
BRLT def
ASLX 
BR numJump, x
numJump: .ADDRSS zero
.ADDRSS one
.ADDRSS two
.ADDRSS three
.ADDRSS four

four: DECO num, s
STRO str2, d
DECO 4, i
BR done
three: DECO num, s
STRO str2, d
DECO 3, i
BR done
two: DECO num, s
STRO str2, d
DECO 2, i
BR done
one: DECO num, s
STRO str2, d
DECO 1, i
BR done
zero: DECO num, s
STRO str2, d
DECO 0, i
BR done
def: DECO num, s
STRO oops, d
BR done

done: STRO fin, d 
STOP

.END

