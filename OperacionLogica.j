.class public OperacionLogica
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
    .limit stack 2
    .limit locals 2

    ; Comparación lógica: 5 > 3
    ldc 5           ; Cargar el número 5 en la pila
    ldc 3           ; Cargar el número 3 en la pila
    if_icmpgt TrueLabel  ; Saltar a TrueLabel si 5 > 3
    ldc 0           ; Cargar "false" (como entero 0)
    goto EndLabel    ; Saltar al final
TrueLabel:
    ldc 1           ; Cargar "true" (como entero 1)
EndLabel:

    istore_1        ; Guardar el resultado de la operación lógica en la variable local 1

    ; Mostrar el resultado por pantalla
    getstatic java/lang/System/out Ljava/io/PrintStream;  ; Obtener System.out
    iload_1         ; Cargar el resultado de la variable local 1
    invokevirtual java/io/PrintStream/println(Z)V        ; Imprimir el valor booleano

    return          ; Finalizar el método
.end method
