; Materia: Lenguajes de Interfaz
; Unidad: #3
; Alumno: Villalba Rodriguez Kevin Eliazar.
; No.Control: 23170369
; Horario: 10:00 - 11:00
; Docente: Ing. José Luis Medina Jiménez
; Práctica 02: Uso del Registro EBX en Procedimientos

INCLUDE Irvine32.inc

.data
    mensaje BYTE "Valor de EBX: ", 0

.code
main PROC
    mov ebx, 10                 ; Asigna el valor inicial 10 al registro EBX
    call Procedimiento1         ; Llama al procedimiento para modificar EBX

    mov edx, OFFSET mensaje     ; Imprime la etiqueta en consola
    call WriteString

    mov eax, ebx                ; Copia el resultado (15) a EAX para imprimirlo
    call WriteDec
    call Crlf
    exit
main ENDP

Procedimiento1 PROC
    add ebx, 5                  ; Suma 5 directamente sobre el valor de EBX
    ret                         ; Regresa el control a main conservando el cambio
Procedimiento1 ENDP

END main