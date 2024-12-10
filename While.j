.class public While
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
    .limit stack 2
    .limit locals 2

    ; Inicializar i = 0
    ldc 0           ; Cargar el valor 0
    istore_1        ; Guardarlo en la variable local 1 (i)

WhileLoopStart:
    ; Condición del bucle: i < 10
    iload_1         ; Cargar el valor de i
    ldc 10          ; Cargar el valor 10
    if_icmpge EndLoop ; Si i >= 10, salir del bucle

    ; Imprimir el valor de i
    getstatic java/lang/System/out Ljava/io/PrintStream;  ; Obtener System.out
    iload_1         ; Cargar el valor de i
    invokevirtual java/io/PrintStream/println(I)V         ; Imprimir el valor de i

    ; Incrementar i
    iload_1         ; Cargar i
    ldc 1           ; Cargar el valor 1
    iadd            ; Incrementar i por 1
    istore_1        ; Guardar el nuevo valor de i

    ; Volver al inicio del bucle
    goto WhileLoopStart

EndLoop:
    return          ; Finalizar el método
.end method
