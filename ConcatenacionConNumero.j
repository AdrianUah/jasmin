.class public ConcatenacionConNumero
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
    .limit stack 3
    .limit locals 2

    ; Crear un nuevo StringBuilder
    new java/lang/StringBuilder
    dup
    invokespecial java/lang/StringBuilder/<init>()V

    ; Añadir la cadena de texto: "El resultado es: "
    ldc "El resultado es: "
    invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    ; Añadir el número (42)
    ldc 42           ; Cargar el número 42
    invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;

    ; Convertir a cadena y guardar el resultado
    invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;

    ; Mostrar el resultado por pantalla
    getstatic java/lang/System/out Ljava/io/PrintStream;
    swap
    invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V

    return
.end method
