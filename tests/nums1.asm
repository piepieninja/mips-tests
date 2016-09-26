	#.data       # variable declarations follow this line

	#.text       # instructions follow this line

main:	                  # indicates start of code (first instruction to execute)
	
	li $t0,42	# set $70 to 42

	li $v0,1	# load the right system call into $v0, int printing is 1
	move $a0, $t0	# move integer to be printed into $a0:  $a0 = $t0
	syscall		# I hope this works

	
