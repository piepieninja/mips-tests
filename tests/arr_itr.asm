
main:	# here we go!
	
	#  while (i<N){
	# 	B[i]=A[i]\;
	#	A[i]=0\;
	#	i=i+1\;
	#  }
	#
	#	This is to practive manually going from C to MIPS asm
	#

	lw $t0,0($gp)	# read i
	lw $t1,4($gp)	# read N

loop:		# oh what a happy loop

	slt $t4,$t0,$t1 	# $t4 is set to 1 if #t0 is less than $t1
	beq $t4,$zero,exit	# if $t4 equals 0 then exit the program
	sll $t5,$t0,2		# left bit shift by 2

	add $t6,$t5,$t2  	# address of A[i]
	add $t7,$t5,$t3  	# address of B[i]
	lw $t8,0($t6)		
	sw $t8,0($t7)
	sw $t8,0($t6)
	addi $t0,$t0,1		# i = i + 1
	j loop

exit:		# end of program! :D
