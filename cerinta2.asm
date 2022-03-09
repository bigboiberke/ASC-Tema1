.data

  fScanf: .asciz "%101[^\n]"
  fPrintf: .asciz "%d\n"
  
  sir: .space 101
  sep: .asciz " "
  
.text

.global main

main:

  pushl $sir
  pushl $fScanf
  call scanf
  popl %ebx
  popl %ebx
  
  pushl $sep
  pushl $sir
  call strtok
  popl %ebx
  popl %ebx
  
  xorl %esi, %esi
  movl %eax, %esi
  
whileloop: 

  cmp $0, %eax
  je lbExit
  
  pushl %eax
  call atoi
  popl %ebx
  
  cmp $0, %eax
  je oper
  pushl %eax
  jmp cont
  
cont:  
  
  pushl $sep
  pushl $0
  call strtok
  popl %ebx
  popl %ebx
  
  //xorl $esi
  
  movl %eax, %esi
  jmp whileloop
  
oper:

  movl $0, %ecx
  movb $0, %al
  movb (%esi, %ecx, 1), %al
  
  cmp $97, %al
  je adunare
  cmp $115, %al
  je scadere
  cmp $109, %al
  je inmultire
  cmp $100, %al
  je impartire
  
adunare:

  popl %ebx
  popl %edx
  addl %ebx, %edx
  pushl %edx
  jmp cont

scadere:

  popl %ebx
  popl %edx
  subl %ebx, %edx
  pushl %edx
  jmp cont

inmultire:

  xorl %edx, %edx
  popl %ebx
  popl %eax
  mull %ebx
  pushl %eax
  jmp cont

impartire:

  xorl %edx, %edx
  popl %ebx
  popl %eax
  divl %ebx
  pushl %eax
  jmp cont
  
lbExit:

  popl %eax
  pushl %eax
  pushl $fPrintf
  call printf
  popl %ebx
  popl %ebx

  movl $1, %eax
  movl $0, %ebx
  int $0x80
