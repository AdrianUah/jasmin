.class public Funcion4
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
    .limit stack 3
    .limit locals 3

    ; Definir dos números y pasarlos como parámetros a la función
    ldc 5                               ; Cargar el número 5 en la pila
    ldc 3                               ; Cargar el número 3 en la pila
    invokestatic Funcion4/sumar(II)I   ; Llamar a la función sumar con dos parámetros
    istore_1                           ; Guardar el resultado en la variable local 1

    ; Imprimir el resultado
    getstatic java/lang/System/out Ljava/io/PrintStream; ; Obtener System.out
    ldc "La suma es: "                                 ; Cargar el texto
    invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V ; Imprimir el texto

    getstatic java/lang/System/out Ljava/io/PrintStream; ; Obtener System.out (otra vez)
    iload_1                                            ; Cargar el valor de la variable local 1
    invokevirtual java/io/PrintStream/println(I)V      ; Imprimir el número

    return
.end method

.method public static sumar(II)I
    .limit stack 2
    .limit locals 2

    ; Sumar los dos números recibidos como parámetros
    iload_0          ; Cargar el primer parámetro (x)
    iload_1          ; Cargar el segundo parámetro (y)
    iadd             ; Sumar x + y
    ireturn          ; Retornar el resultado
.end method
