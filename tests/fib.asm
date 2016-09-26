	# fibinacci in MIPS

.data       # variable declarations follow this line
newline:	 .asciiz "\n"
.text       # instructions follow this line

fib:
	
	li $t0,0	# set $t0 to 0
	li $t1,1	# set $t1 to 1
	li $t2,1	# set $t2 to 1	

	# print first term
	
	li $v0,1	# load the right system call into $v0, int printing is 1
	move $a0, $t0	# move integer to be printed into $a0:  $a0 = $t0
	syscall		# I hope this works

	# newline
	
	li $v0,4	# load the right system call for the newline string!
	la $a0, newline	# load the address of the string!
	syscall
	
	# print second term
	
	li $v0,1	# load the right system call into $v0, int printing is 1
	move $a0, $t1	# move integer to be printed into $a0:  $a0 = $t1
	syscall		# I hope this works

	# newline
	li $v0,4	# load the right system call for the newline string!
	la $a0, newline	# load the address of the string!
	syscall

loop:	
	# print thrid (nth) term

	li $v0,1        # load the right system call into $v0, int printing is 1
	move $a0, $t2   # move integer to be printed into $a0:  $a0 = $t1
	syscall         # I hope this works

	# newline
	li $v0,4        # load the right system call for the newline string!
	la $a0, newline # load the address of the string!
	syscall

	move $t0,$t2	# $t0 = $t2
	add $t2,$t2,$t1	# $t2 += $t1
	move $t1,$t0	# $t1 = $t0
	
	bgt $t2,1000,end	# go to end if $t2 > 1000
	j loop
	
main:	                  # indicates start of code (first instruction to execute

	jal fib		# start the fib subroutine

end:	
	jr $ra
