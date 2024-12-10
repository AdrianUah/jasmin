.class public Funcion3
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
    .limit stack 3
    .limit locals 3

    ; Definir un número y pasar como parámetro a la función
    ldc 7                               ; Cargar el número 7 en la pila
    invokestatic Funcion3/duplicar(I)I ; Llamar a la función duplicar con un parámetro
    istore_1                           ; Guardar el resultado en la variable local 1

    ; Imprimir el resultado
    getstatic java/lang/System/out Ljava/io/PrintStream; ; Obtener System.out
    ldc "El doble es: "                                ; Cargar el texto
    invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V ; Imprimir el texto

    getstatic java/lang/System/out Ljava/io/PrintStream; ; Obtener System.out (otra vez)
    iload_1                                            ; Cargar el valor de la variable local 1
    invokevirtual java/io/PrintStream/println(I)V      ; Imprimir el número

    return
.end method

.method public static duplicar(I)I
    .limit stack 2
    .limit locals 1

    ; Calcular el doble del número recibido como parámetro
    iload_0          ; Cargar el primer parámetro (n)
    ldc 2            ; Cargar el valor 2
    imul             ; Multiplicar n * 2
    ireturn          ; Retornar el resultado
.end method
