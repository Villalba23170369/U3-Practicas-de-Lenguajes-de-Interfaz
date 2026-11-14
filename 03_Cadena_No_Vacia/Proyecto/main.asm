; Materia: Lenguajes de Interfaz - Unidad 3
; Alumno: Medina González Cristian Roberto
; Matrícula: 23170234
; Horario: 10:00 - 11:00
; Docente: Ing. José Luis Medina Jiménez
; Práctica 03: Validación de una cadena no vacía
; Descripción: Revisa el primer carácter y decide qué mensaje mostrar.

INCLUDE Irvine32.inc

.data
    Cadena1 BYTE "Hola", 0
    Cadena2 BYTE "La cadena esta vacia", 0

.code
main PROC
    mov esi, OFFSET Cadena1
    call Validacion

    ; ECX funciona como indicador: cero significa vacía y uno no vacía.
    ; TEST actualiza ZF sin cambiar el contenido de ECX.
    test ecx, ecx
    jz NoValida

    mov edx, OFFSET Cadena1
    call WriteString
    call Crlf
    jmp Fin

NoValida:
    mov edx, OFFSET Cadena2
    call WriteString
    call Crlf

Fin:
    exit
main ENDP

; Entrada: ESI apunta a una cadena terminada en cero.
; Salida: ECX=0 si está vacía; ECX=1 si tiene al menos un carácter.
; Modifica EAX, ECX y las banderas; conserva ESI.
Validacion PROC
    mov ecx, 0
    mov eax, 0

Buscar:
    ; Para saber si está vacía basta con comprobar el primer byte.
    ; Esta rutina no calcula la longitud ni recorre toda la cadena.
    cmp BYTE PTR [esi+ecx], 0
    je Salir
    mov ecx, 1

Salir:
    ret
Validacion ENDP

END main
