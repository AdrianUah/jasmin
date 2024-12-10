.class public Multiplicacion
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
    .limit stack 3
    .limit locals 3

    ; Cargar los números en la pila
    ldc 5           ; Cargar el entero 5
    ldc 3           ; Cargar el entero 3
    imul            ; Multiplicar los dos números en la pila

    ; Guardar el resultado en una variable local (opcional)
    istore_1        ; Guardar el resultado en la variable local 1

    ; Mostrar el resultado por pantalla
    getstatic java/lang/System/out Ljava/io/PrintStream;  ; Obtener System.out
    iload_1         ; Cargar el resultado desde la variable local 1
    invokevirtual java/io/PrintStream/println(I)V        ; Llamar a println(int)

    return          ; Terminar el método
.end method
