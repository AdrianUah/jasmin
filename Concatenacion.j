.class public Concatenacion
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
    .limit stack 3
    .limit locals 3

    ; Crear un nuevo StringBuilder
    new java/lang/StringBuilder
    dup
    invokespecial java/lang/StringBuilder/<init>()V

    ; Añadir la primera cadena: "Hola, "
    ldc "Hola, "
    invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    ; Añadir la segunda cadena: "mundo!"
    ldc "mundo!"
    invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    ; Convertir a cadena y guardar el resultado
    invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;

    ; Mostrar el resultado por pantalla
    getstatic java/lang/System/out Ljava/io/PrintStream;
    swap
    invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V

    return
.end method
