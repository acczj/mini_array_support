array a
label main
begin
array a1
var k
pointer b
var c
a[1] = 2
var t0
t0 = a[1]
k = t0
var t1
t1 = a[1]
a[t1] = 2
actual L1
call PRINTS
var t2
t2 = a[2]
actual t2
call PRINTN
actual L2
call PRINTS
var t3
t3 = &k
b = t3
var t4
t4 = *b
a[t4] = 4
actual L1
call PRINTS
var t5
t5 = a[2]
actual t5
call PRINTN
actual L2
call PRINTS
var t6
t6 = a[1]
var t7
t7 = a[t6]
var t8
t8 = t7 + 1
var t9
t9 = t8 - 2
var t10
t10 = t9 * 4
var t11
t11 = t10 / 2
c = t11
actual L3
call PRINTS
actual c
call PRINTN
actual L2
call PRINTS
a1[5] = 97
a1[c] = 102
actual L4
call PRINTS
var t12
t12 = a1[c]
var t13
t13 = a1[5]
var t14
t14 = t12 - t13
actual t14
call PRINTN
actual L2
call PRINTS
end
	# head
	LOD R2,STACK
	STO (R2),0
	LOD R4,EXIT
	STO (R2+4),R4

	# array a

	# label main
main:

	# begin

	# array a1

	# var k

	# pointer b

	# var c

	# a[1] = 2
	LOD R5,1
	LOD R4,STATIC
	LOD R6,(R4+0)
	LOD R6,R4+0
	MUL R5,4
	ADD R5,R6
	LOD R7,2
	STO (R5),R7

	# var t0

	# t0 = a[1]
	LOD R5,1
	LOD R6,R4+0
	MUL R5,4
	ADD R5,R6
	LOD R5,(R5)
	STO (R2+60),R5

	# k = t0
	LOD R6,(R2+60)

	# var t1

	# t1 = a[1]
	LOD R4,STATIC
	LOD R8,(R4+0)
	LOD R9,1
	LOD R8,R4+0
	MUL R9,4
	ADD R9,R8
	LOD R9,(R9)
	STO (R2+64),R9

	# a[t1] = 2
	LOD R8,(R2+64)
	LOD R4,STATIC
	LOD R10,(R4+0)
	LOD R10,R4+0
	MUL R8,4
	ADD R8,R10
	LOD R11,2
	STO (R8),R11

	# actual L1
	LOD R8,L1
	STO (R2+68),R8

	# call PRINTS
	STO (R2+48),R6
	STO (R2+72),R2
	LOD R4,R1+32
	STO (R2+76),R4
	LOD R2,R2+72
	JMP PRINTS

	# var t2

	# t2 = a[2]
	LOD R4,STATIC
	LOD R5,(R4+0)
	LOD R6,2
	LOD R5,R4+0
	MUL R6,4
	ADD R6,R5
	LOD R6,(R6)
	STO (R2+68),R6

	# actual t2
	LOD R5,(R2+68)
	STO (R2+72),R5

	# call PRINTN
	STO (R2+76),R2
	LOD R4,R1+32
	STO (R2+80),R4
	LOD R2,R2+76
	JMP PRINTN

	# actual L2
	LOD R5,L2
	STO (R2+72),R5

	# call PRINTS
	STO (R2+76),R2
	LOD R4,R1+32
	STO (R2+80),R4
	LOD R2,R2+76
	JMP PRINTS

	# var t3

	# t3 = &k
	LOD R5,(R2+48)
	LOD R5,R2+48

	# b = t3
	STO (R2+72),R5

	# var t4

	# t4 = *b
	STO (R2+52),R5
	LOD R5,(R2+52)
	LOD R5,(R5)

	# a[t4] = 4
	STO (R2+76),R5
	LOD R4,STATIC
	LOD R6,(R4+0)
	LOD R6,R4+0
	MUL R5,4
	ADD R5,R6
	LOD R7,4
	STO (R5),R7

	# actual L1
	LOD R5,L1
	STO (R2+80),R5

	# call PRINTS
	STO (R2+84),R2
	LOD R4,R1+32
	STO (R2+88),R4
	LOD R2,R2+84
	JMP PRINTS

	# var t5

	# t5 = a[2]
	LOD R4,STATIC
	LOD R5,(R4+0)
	LOD R6,2
	LOD R5,R4+0
	MUL R6,4
	ADD R6,R5
	LOD R6,(R6)
	STO (R2+80),R6

	# actual t5
	LOD R5,(R2+80)
	STO (R2+84),R5

	# call PRINTN
	STO (R2+88),R2
	LOD R4,R1+32
	STO (R2+92),R4
	LOD R2,R2+88
	JMP PRINTN

	# actual L2
	LOD R5,L2
	STO (R2+84),R5

	# call PRINTS
	STO (R2+88),R2
	LOD R4,R1+32
	STO (R2+92),R4
	LOD R2,R2+88
	JMP PRINTS

	# var t6

	# t6 = a[1]
	LOD R4,STATIC
	LOD R5,(R4+0)
	LOD R6,1
	LOD R5,R4+0
	MUL R6,4
	ADD R6,R5
	LOD R6,(R6)
	STO (R2+84),R6

	# var t7

	# t7 = a[t6]
	LOD R4,STATIC
	LOD R5,(R4+0)
	LOD R7,(R2+84)
	LOD R5,R4+0
	MUL R7,4
	ADD R7,R5
	LOD R7,(R7)
	STO (R2+88),R7

	# var t8

	# t8 = t7 + 1
	LOD R5,(R2+88)
	LOD R8,1
	ADD R5,R8

	# var t9

	# t9 = t8 - 2
	STO (R2+92),R5
	LOD R9,2
	SUB R5,R9

	# var t10

	# t10 = t9 * 4
	STO (R2+96),R5
	LOD R10,4
	MUL R5,R10

	# var t11

	# t11 = t10 / 2
	STO (R2+100),R5
	LOD R11,2
	DIV R5,R11

	# c = t11
	STO (R2+104),R5

	# actual L3
	LOD R12,L3
	STO (R2+108),R12

	# call PRINTS
	STO (R2+56),R5
	STO (R2+112),R2
	LOD R4,R1+32
	STO (R2+116),R4
	LOD R2,R2+112
	JMP PRINTS

	# actual c
	LOD R5,(R2+56)
	STO (R2+108),R5

	# call PRINTN
	STO (R2+112),R2
	LOD R4,R1+32
	STO (R2+116),R4
	LOD R2,R2+112
	JMP PRINTN

	# actual L2
	LOD R5,L2
	STO (R2+108),R5

	# call PRINTS
	STO (R2+112),R2
	LOD R4,R1+32
	STO (R2+116),R4
	LOD R2,R2+112
	JMP PRINTS

	# a1[5] = 97
	LOD R5,5
	LOD R6,(R2+8)
	LOD R6,R2+8
	MUL R5,4
	ADD R5,R6
	LOD R7,97
	STO (R5),R7

	# a1[c] = 102
	LOD R5,(R2+56)
	LOD R6,R2+8
	MUL R5,4
	ADD R5,R6
	LOD R8,102
	STO (R5),R8

	# actual L4
	LOD R5,L4
	STO (R2+108),R5

	# call PRINTS
	STO (R2+112),R2
	LOD R4,R1+32
	STO (R2+116),R4
	LOD R2,R2+112
	JMP PRINTS

	# var t12

	# t12 = a1[c]
	LOD R5,(R2+8)
	LOD R6,(R2+56)
	LOD R5,R2+8
	MUL R6,4
	ADD R6,R5
	LOD R6,(R6)
	STO (R2+108),R6

	# var t13

	# t13 = a1[5]
	LOD R5,(R2+8)
	LOD R7,5
	LOD R5,R2+8
	MUL R7,4
	ADD R7,R5
	LOD R7,(R7)
	STO (R2+112),R7

	# var t14

	# t14 = t12 - t13
	LOD R5,(R2+108)
	LOD R8,(R2+112)
	SUB R5,R8

	# actual t14
	STO (R2+116),R5
	STO (R2+120),R5

	# call PRINTN
	STO (R2+124),R2
	LOD R4,R1+32
	STO (R2+128),R4
	LOD R2,R2+124
	JMP PRINTN

	# actual L2
	LOD R5,L2
	STO (R2+120),R5

	# call PRINTS
	STO (R2+124),R2
	LOD R4,R1+32
	STO (R2+128),R4
	LOD R2,R2+124
	JMP PRINTS

	# end
	LOD R3,(R2+4)
	LOD R2,(R2)
	JMP R3

PRINTN:
	LOD R7,(R2-4) # 789
	LOD R15,R7 # 789 
	DIV R7,10 # 78
	TST R7
	JEZ PRINTDIGIT
	LOD R8,R7 # 78
	MUL R8,10 # 780
	SUB R15,R8 # 9
	STO (R2+8),R15 # local 9 store

	# out 78
	STO (R2+12),R7 # actual 78 push

	# call PRINTN
	STO (R2+16),R2
	LOD R4,R1+32
	STO (R2+20),R4
	LOD R2,R2+16
	JMP PRINTN

	# out 9
	LOD R15,(R2+8) # local 9 

PRINTDIGIT:
	ADD  R15,48
	OUT

	# ret
	LOD R3,(R2+4)
	LOD R2,(R2)
	JMP R3

PRINTS:
	LOD R7,(R2-4)

PRINTC:
	LOD R15,(R7)
	DIV R15,16777216
	TST R15
	JEZ PRINTSEND
	OUT
	ADD R7,1
	JMP PRINTC

PRINTSEND:
	# ret
	LOD R3,(R2+4)
	LOD R2,(R2)
	JMP R3

EXIT:
	END

L4:
	DBS 97,49,91,99,93,45,97,49,91,53,93,61,0
L3:
	DBS 99,61,0
L2:
	DBS 10,0
L1:
	DBS 97,91,50,93,61,0
STATIC:
	DBN 0,40
STACK:
