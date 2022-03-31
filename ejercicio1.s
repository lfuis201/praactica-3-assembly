.data
    msg1: .asciiz "\nIngrese un numero: "
    msg2: .asciiz "\nIngrese otro numero: "
    msg3: .asciiz "\nLa suma es: "
    msg4: .asciiz "\nLa diferencia es: "
    msg5: .asciiz "\nLa multiplicacion es: "
    msg6: .asciiz "\nLa division es: "
    msg7: .asciiz "\nEl promedio es: "
.text

    # imprimimos el primer mensaje
    main:
    li $v0,4
    la $a0,msg1
    syscall

    # recibimos el ingreso del usuario en $t1
    li $v0,5
    syscall
    move $t1,$v0

    # imprimimos el segundo mensaje
    li $v0,4
    la $a0,msg2
    syscall

    # recibimos el ingreso del usuario en $t2
    li $v0,5
    syscall
    move $t2,$v0

    # realizamos la suma en $t3
    add $t3,$t1,$t2

    # imprimimos el tercer mensaje
    li $v0,4
    la $a0,msg3
    syscall

    # imprimimos la suma
    li $v0,1
    move $a0,$t3
    syscall

    # realizamos la suma en $t4
    sub $t4,$t1,$t2

    # imprimimos el cuarto mensaje
    li $v0,4
    la $a0,msg4
    syscall

    # imprimimos la suma
    li $v0,1
    move $a0,$t4
    syscall

    # realizamos la multiplicacion en $t5
    mul $t5,$t1,$t2
    
    # imprimimos el quinto mensaje
    li $v0,4
    la $a0,msg5
    syscall

    # imprimimos la multiplicacion
    li $v0,1
    move $a0,$t5
    syscall

    # realizamos la division en $t6
    div $t6,$t1,$t2

    # imprimimos el sexto mensaje
    li $v0,4
    la $a0,msg6
    syscall

    # imprimimos la division
    li $v0,1
    move $a0,$t6
    syscall

    li $v0,10

    li $v0,3

    # calculamos el promedio en $t7
    div $t7,$t3,2

    # imprimimos el septimo mensaje
    li $v0,4
    la $a0,msg7
    syscall

    # imprimimos el promedio
    li $v0,1
    move $a0, $t7
    syscall

    li $v0,10
    syscall
