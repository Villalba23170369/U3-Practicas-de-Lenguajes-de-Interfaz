; Materia: Lenguajes de Interfaz
; Unidad: #3
; Alumno: Villalba Rodriguez Kevin Eliazar
; No.Control: 23170369
; Horario: 10:00 - 11:00
; Docente: Ing. José Luis Medina Jiménez
; Práctica 03: Validación de una cadena no vacía

INCLUDE Irvine32.inc

.data
    Cadena1 BYTE "Hola", 0
    Cadena2 BYTE "La cadena esta vacia", 0

.code
main PROC
    mov esi, OFFSET Cadena1     ; Carga la dirección de memoria de Cadena1 en ESI
    call Validacion             ; Llama al procedimiento para verificar si tiene contenido

    test ecx, ecx               ; Evalúa si ECX es 0 (activa bandera ZF sin modificar ECX)
    jz NoValida                 ; Si ZF=1 (ECX=0), salta a imprimir el mensaje de cadena vacía

    mov edx, OFFSET Cadena1     ; Si es válida, imprime el contenido de Cadena1
    call WriteString
    call Crlf
    jmp Fin

NoValida:
    mov edx, OFFSET Cadena2     ; Imprime "La cadena esta vacia"
    call WriteString
    call Crlf

Fin:
    exit
main ENDP

Validacion PROC
    mov ecx, 0                  ; Inicializa bandera de estado en 0 (asume vacía)
    mov eax, 0

Buscar:
    cmp BYTE PTR [esi+ecx], 0   ; Compara el primer carácter con el terminador nulo (0)
    je Salir                    ; Si es 0, está vacía y sale dejando ECX = 0
    mov ecx, 1                  ; Si hay al menos un carácter, marca ECX = 1

Salir:
    ret
Validacion ENDP

END main