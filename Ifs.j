.class public Ifs
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
    .limit stack 3
    .limit locals 2

    ; Inicializar la variable number = 12
    ldc 12           ; Cargar el valor 12
    istore_1         ; Guardarlo en la variable local 1

    ; Evaluar si number > 10
    iload_1          ; Cargar number
    ldc 10           ; Cargar el valor 10
    if_icmple ElseLabel  ; Si number <= 10, saltar al ElseLabel

    ; Si number > 10
    getstatic java/lang/System/out Ljava/io/PrintStream;  ; Obtener System.out
    ldc "Número es mayor que 10"
    invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V

    ; Evaluar si number es par
    iload_1          ; Cargar number
    bipush 2         ; Cargar el valor 2
    irem             ; number % 2
    ifne EndLabel    ; Si el resto no es 0, saltar a EndLabel

    ; Si number es par
    getstatic java/lang/System/out Ljava/io/PrintStream;  ; Obtener System.out
    ldc "Número es par"
    invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V

    ; Fin de la evaluación de si es par
EndLabel:
    goto FinalLabel   ; Saltar al final

ElseLabel:
    ; Si number no es mayor que 10
    getstatic java/lang/System/out Ljava/io/PrintStream;  ; Obtener System.out
    ldc "Número no es mayor que 10"
    invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V

FinalLabel:
    return            ; Finalizar el método
.end method
