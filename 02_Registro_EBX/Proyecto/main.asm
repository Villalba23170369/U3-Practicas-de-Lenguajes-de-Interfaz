; Materia: Lenguajes de Interfaz
; Unidad: #3
; Alumno: Villalba Rodriguez Kevin Eliazar
; No.Control: 23170369
; Horario: 10:00 - 11:00
; Docente: Ing. José Luis Medina Jiménez
; Práctica 02: Modificación de un registro desde un procedimiento

INCLUDE Irvine32.inc

.data
    mensaje BYTE "Valor de EBX: ", 0

.code
main PROC
    mov ebx, 10
    call Procedimiento1

    mov edx, OFFSET mensaje
    call WriteString

    mov eax, ebx
    call WriteDec
    call Crlf
    exit
main ENDP

; Entra EBX con el valor inicial y sale aumentado en cinco.
Procedimiento1 PROC
    add ebx, 5
    ret
Procedimiento1 ENDP

END main
