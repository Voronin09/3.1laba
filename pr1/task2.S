.include "my-macro"	# подключение файла с макроопределениями

.text   			#
        
.global _start   
_start:	
        movl $5, %eax   	#Присваиваем регистру edx значение 5
	movl $1, %ebx

L1: 				#
        cmpl  $0, %eax   	#сравниваем значение регистра eax и 0
	je    L2		#если = 0, то переходим по метке L2
	imull %eax, %ebx	#умножаем eax на  ebx и записываем значение в ebx 
	decl  %eax		#ebx-1
	jmp   L1		#Безусловный переход на метку L1 
	 
L2:	
        Finish    		#Завершаем программу, обращаясь к макро коду
.end
        
