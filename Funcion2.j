.class public Funcion2
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
    .limit stack 3
    .limit locals 2

    ; Llamar al método obtenerNumero y guardar el resultado en una variable local
    invokestatic Funcion2/obtenerNumero()I ; Llamar a la función
    istore_1                               ; Guardar el resultado en la variable local 1

    ; Imprimir el mensaje y el número
    getstatic java/lang/System/out Ljava/io/PrintStream; ; Obtener System.out
    ldc "El resultado es: "                              ; Cargar el texto
    invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V ; Imprimir el texto

    getstatic java/lang/System/out Ljava/io/PrintStream; ; Obtener System.out (otra vez)
    iload_1                                              ; Cargar el valor de la variable local 1
    invokevirtual java/io/PrintStream/println(I)V        ; Imprimir el número

    return
.end method

.method public static obtenerNumero()I
    .limit stack 1
    .limit locals 0

    ; Retornar el valor constante 42
    ldc 42
    ireturn
.end method
