.data
  
  sirhexa: .space 200
  sirbin: .space 800
  
  fScanf: .asciz "%s"
  fPrintf: .asciz "%s "
  fPrintf2: .asciz "%d "
  fPrintf3: .asciz "%c "
  fNewline: .asciz "\n"
  
  fMin: .asciz "%c"
  
  contput: .long 0
  
  indexDec: .long 0
  indexFinal: .long 0
  
  variabila: .long 0
  constanta: .long 0
  operator: .long 0
  numar: .long 0
  
  poz: .long 0
  neg: .long 0
  
  minus: .asciz "-"
  
  Oplet: .asciz "let"
  Opadd: .asciz "add"
  Opmul: .asciz "mul"
  Opdiv: .asciz "div"
  Opsub: .asciz "sub"
  
.text

.global main
  
main:
  
  //transformare in binar
  
  pushl $sirhexa
  pushl $fScanf
  call scanf
  popl %ebx
  popl %ebx
  
  movl $sirhexa, %edi
  movl $sirbin, %esi
  xorl %ecx, %ecx
  jmp lbFor
  
lbFor:
  
  movb (%edi, %ecx, 1), %al
  cmp $0, %al
  je frFinala
  
  cmp $48, %al
  je cif0
  cmp $49, %al
  je cif1
  cmp $50, %al
  je cif2
  cmp $51, %al
  je cif3
  cmp $52, %al
  je cif4
  cmp $53, %al
  je cif5
  cmp $54, %al
  je cif6
  cmp $55, %al
  je cif7
  cmp $56, %al
  je cif8
  cmp $57, %al
  je cif9
  cmp $65, %al
  je cifA
  cmp $66, %al
  je cifB
  cmp $67, %al
  je cifC
  cmp $68, %al
  je cifD
  cmp $69, %al
  je cifE
  cmp $70, %al
  je cifF
  
contFor:
  incl %ecx
  jmp lbFor
  
cif0:

  pushl %ecx
  
  movl indexDec, %ecx
  movb $48, (%esi, %ecx, 1)
  incl %ecx
  
  movb $48, (%esi, %ecx, 1)
  incl %ecx
  
  movb $48, (%esi, %ecx, 1)
  incl %ecx
  
  movb $48, (%esi, %ecx, 1)
  incl %ecx
  
  addl $4, indexDec
  
  popl %ecx
  jmp contFor

cif1:

  pushl %ecx
  
  movl indexDec, %ecx
  movb $48, (%esi, %ecx, 1)
  incl %ecx
  
  movb $48, (%esi, %ecx, 1)
  incl %ecx
  
  movb $48, (%esi, %ecx, 1)
  incl %ecx
  
  movb $49, (%esi, %ecx, 1)
  incl %ecx
  
  addl $4, indexDec
  
  popl %ecx
  jmp contFor

cif2:

  pushl %ecx
  
  movl indexDec, %ecx
  movb $48, (%esi, %ecx, 1)
  incl %ecx
  
  movb $48, (%esi, %ecx, 1)
  incl %ecx
  
  movb $49, (%esi, %ecx, 1)
  incl %ecx
  
  movb $48, (%esi, %ecx, 1)
  incl %ecx
  
  addl $4, indexDec
  
  popl %ecx
  jmp contFor

cif3:

  pushl %ecx
  
  movl indexDec, %ecx
  movb $48, (%esi, %ecx, 1)
  incl %ecx
  
  movb $48, (%esi, %ecx, 1)
  incl %ecx
  
  movb $49, (%esi, %ecx, 1)
  incl %ecx
  
  movb $49, (%esi, %ecx, 1)
  incl %ecx
  
  addl $4, indexDec
  
  popl %ecx
  jmp contFor

cif4:

  pushl %ecx
  
  movl indexDec, %ecx
  movb $48, (%esi, %ecx, 1)
  incl %ecx
  
  movb $49, (%esi, %ecx, 1)
  incl %ecx
  
  movb $48, (%esi, %ecx, 1)
  incl %ecx
  
  movb $48, (%esi, %ecx, 1)
  incl %ecx
  
  addl $4, indexDec
  
  popl %ecx
  jmp contFor

cif5:

  pushl %ecx
  
  movl indexDec, %ecx
  movb $48, (%esi, %ecx, 1)
  incl %ecx
  
  movb $49, (%esi, %ecx, 1)
  incl %ecx
  
  movb $48, (%esi, %ecx, 1)
  incl %ecx
  
  movb $49, (%esi, %ecx, 1)
  incl %ecx
  
  addl $4, indexDec
  
  popl %ecx
  jmp contFor

cif6:

  pushl %ecx
  
  movl indexDec, %ecx
  movb $48, (%esi, %ecx, 1)
  incl %ecx
  
  movb $49, (%esi, %ecx, 1)
  incl %ecx
  
  movb $49, (%esi, %ecx, 1)
  incl %ecx
  
  movb $48, (%esi, %ecx, 1)
  incl %ecx
  
  addl $4, indexDec
  
  popl %ecx
  jmp contFor

cif7:

  pushl %ecx
  
  movl indexDec, %ecx
  movb $48, (%esi, %ecx, 1)
  incl %ecx
  
  movb $49, (%esi, %ecx, 1)
  incl %ecx
  
  movb $49, (%esi, %ecx, 1)
  incl %ecx
  
  movb $49, (%esi, %ecx, 1)
  incl %ecx
  
  addl $4, indexDec
  
  popl %ecx
  jmp contFor

cif8:

  pushl %ecx
  
  movl indexDec, %ecx
  movb $49, (%esi, %ecx, 1)
  incl %ecx
  
  movb $48, (%esi, %ecx, 1)
  incl %ecx
  
  movb $48, (%esi, %ecx, 1)
  incl %ecx
  
  movb $48, (%esi, %ecx, 1)
  incl %ecx
  
  addl $4, indexDec
  
  popl %ecx
  jmp contFor

cif9:

  pushl %ecx
  
  movl indexDec, %ecx
  movb $49, (%esi, %ecx, 1)
  incl %ecx
  
  movb $48, (%esi, %ecx, 1)
  incl %ecx
  
  movb $48, (%esi, %ecx, 1)
  incl %ecx
  
  movb $49, (%esi, %ecx, 1)
  incl %ecx
  
  addl $4, indexDec
  
  popl %ecx
  jmp contFor

cifA:

  pushl %ecx
  
  movl indexDec, %ecx
  movb $49, (%esi, %ecx, 1)
  incl %ecx
  
  movb $48, (%esi, %ecx, 1)
  incl %ecx
  
  movb $49, (%esi, %ecx, 1)
  incl %ecx
  
  movb $48, (%esi, %ecx, 1)
  incl %ecx
  
  addl $4, indexDec
  
  popl %ecx
  jmp contFor

cifB:

  pushl %ecx
  
  movl indexDec, %ecx
  movb $49, (%esi, %ecx, 1)
  incl %ecx
  
  movb $48, (%esi, %ecx, 1)
  incl %ecx
  
  movb $49, (%esi, %ecx, 1)
  incl %ecx
  
  movb $49, (%esi, %ecx, 1)
  incl %ecx
  
  addl $4, indexDec
  
  popl %ecx
  jmp contFor

cifC:

  pushl %ecx
  
  movl indexDec, %ecx
  movb $49, (%esi, %ecx, 1)
  incl %ecx
  
  movb $49, (%esi, %ecx, 1)
  incl %ecx
  
  movb $48, (%esi, %ecx, 1)
  incl %ecx
  
  movb $48, (%esi, %ecx, 1)
  incl %ecx
  
  addl $4, indexDec
  
  popl %ecx
  jmp contFor

cifD:

  pushl %ecx
  
  movl indexDec, %ecx
  movb $49, (%esi, %ecx, 1)
  incl %ecx
  
  movb $49, (%esi, %ecx, 1)
  incl %ecx
  
  movb $48, (%esi, %ecx, 1)
  incl %ecx
  
  movb $49, (%esi, %ecx, 1)
  incl %ecx
  
  addl $4, indexDec
  
  popl %ecx
  jmp contFor

cifE:

  pushl %ecx
  
  movl indexDec, %ecx
  movb $49, (%esi, %ecx, 1)
  incl %ecx
  
  movb $49, (%esi, %ecx, 1)
  incl %ecx
  
  movb $49, (%esi, %ecx, 1)
  incl %ecx
  
  movb $48, (%esi, %ecx, 1)
  incl %ecx
  
  addl $4, indexDec
  
  popl %ecx
  jmp contFor

cifF:

  pushl %ecx
  
  movl indexDec, %ecx
  movb $49, (%esi, %ecx, 1)
  incl %ecx
  
  movb $49, (%esi, %ecx, 1)
  incl %ecx
  
  movb $49, (%esi, %ecx, 1)
  incl %ecx
  
  movb $49, (%esi, %ecx, 1)
  incl %ecx
  
  addl $4, indexDec
  
  popl %ecx
  jmp contFor


frFinala:

  movl $0, %ecx
  jmp trFinala

trFinala:
  
  movb (%esi, %ecx, 1), %al
  
  cmp $0, %al
  je lbExit
  
  addl $1, indexFinal
  cmp $1, indexFinal
  je Cbit1
  
  cmp $2, indexFinal
  je Cbit2
  
  cmp $3, indexFinal
  je Cbit3
  
  cmp $4, indexFinal
  je Cbit4
  
  cmp $5, indexFinal
  je Cbit5
  
  cmp $6, indexFinal
  je Cbit5
  
  cmp $7, indexFinal
  je Cbit5
  
  cmp $8, indexFinal
  je Cbit5
  
  cmp $9, indexFinal
  je Cbit5
  
  cmp $10, indexFinal
  je Cbit5
  
  cmp $11, indexFinal
  je Cbit5
  
  cmp $12, indexFinal
  je Cbit12
  
  
trFinalCont:

  incl %ecx
  jmp trFinala

Cbit1:

  addl $128, contput
  jmp trFinalCont
  
Cbit2:
  
  cmp $48, %al
  je Cbit2.0
  cmp $49, %al
  je Cbit2.1
  
Cbit2.0:
  
  movl $1, variabila
  movl $1, constanta
  jmp trFinalCont

Cbit2.1:
  
  movl $1, operator
  jmp trFinalCont
 
Cbit3:
  
  cmp $48, %al
  je Cbit3.0
  cmp $49, %al
  je Cbit3.1
  
Cbit3.0:
  
  subl $1, variabila
  jmp trFinalCont

Cbit3.1:

  subl $1, constanta
  jmp trFinalCont
  
Cbit4:

  cmp $48, %al
  je verPoz
  cmp $49, %al
  je trFinalCont

verPoz:

  cmp $1, constanta
  je pozi
  cmp $0, constanta
  je trFinalCont
  
pozi:
  
  movl $1, poz
  jmp trFinalCont
  
Cbit5:

  cmp $49, %al
  je sum1
  cmp $48, %al
  jmp shift1
  

sum1:
  
  movl contput, %eax
  addl %eax, numar
  jmp shift1

shift1:

  xorl %edx, %edx
  movl contput, %eax
  movl $2, %ebx
  divl %ebx
  movl %eax, contput
  jmp trFinalCont
  
Cbit12:

  cmp $49, %al
  je sum2
  cmp $48, %al
  je shift2
  

sum2:
  
  movl contput, %eax
  addl %eax, numar
  jmp shift2

shift2:

  xorl %edx, %edx
  movl contput, %eax
  movl $2, %ebx
  divl %ebx
  movl %eax, contput
  jmp rst
  
rst:
  
  pushl %ecx
  cmp $1, operator
  je op
  cmp $1, variabila
  je var
  cmp $1, constanta
  je PozOrNeg
  
op:
  
  cmp $0, numar
  je opLet
  cmp $1, numar
  je opAdd
  cmp $2, numar
  je opSub
  cmp $3, numar
  je opMul
  cmp $4, numar
  je opDiv
  
opLet:

  pushl $Oplet
  pushl $fPrintf
  call printf
  popl %ebx
  popl %ebx
  pushl $0
  call fflush
  popl %ebx
  jmp rst2

opAdd:

  pushl $Opadd
  pushl $fPrintf
  call printf
  popl %ebx
  popl %ebx
  pushl $0
  call fflush
  popl %ebx
  jmp rst2

opSub:
   
  pushl $Opsub
  pushl $fPrintf
  call printf
  popl %ebx
  popl %ebx
  pushl $0
  call fflush
  popl %ebx
  jmp rst2

opMul:

  pushl $Opmul
  pushl $fPrintf
  call printf
  popl %ebx
  popl %ebx
  pushl $0
  call fflush
  popl %ebx
  jmp rst2

opDiv: 

  pushl $Opdiv
  pushl $fPrintf
  call printf
  popl %ebx
  popl %ebx
  pushl $0
  call fflush
  popl %ebx
  jmp rst2
  
var:
  
  pushl numar
  pushl $fPrintf3
  call printf
  popl %ebx
  popl %ebx
  push $0
  call fflush
  popl %ebx
  jmp rst2

PozOrNeg:

  cmp $0, poz
  je Neg
  cmp $1, poz
  je Poz

Neg:
  
  pushl $minus
  pushl $fScanf
  call printf
  popl %ebx
  popl %ebx
  push $0
  call fflush
  popl %ebx
  jmp Poz

Poz:

  pushl numar
  pushl $fPrintf2
  call printf
  popl %ebx
  popl %ebx
  pushl $0
  call fflush
  popl %ebx
  jmp rst2


rst2:

  subl $12, indexFinal
  movl $0, numar
  movl $0, constanta
  movl $0, variabila
  movl $0, poz
  movl $0, operator
  movl $0, contput
  popl %ecx
  jmp trFinalCont
  

lbExit:

  pushl $fNewline
  call printf
  popl %ebx
  
  
  movl $1, %eax
  xorl %ebx, %ebx
  int $0x80
