.class public Funcion1
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
    .limit stack 1
    .limit locals 1

    ; Llamar al método mostrarMensaje
    invokestatic Funcion1/mostrarMensaje()V

    return
.end method

.method public static mostrarMensaje()V
    .limit stack 2
    .limit locals 0

    ; Imprimir el mensaje
    getstatic java/lang/System/out Ljava/io/PrintStream;  ; Obtener System.out
    ldc "Hola desde la función mostrarMensaje!"          ; Cargar el mensaje
    invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V ; Imprimir el mensaje

    return
.end method
