; Materia: Lenguajes de Interfaz
; Unidad: #3
; Alumno: Villalba Rodriguez Kevin Eliazar
; No.Control: 23170369
; Horario: 10:00 - 11:00
; Docente: Ing. José Luis Medina Jiménez
; Práctica 01: Llamadas a un procedimiento


INCLUDE Irvine32.inc

.data
    mensajeInicio BYTE "Inicio de programa", 0
    mensajeProcedimiento BYTE "Estoy dentro del procedimiento", 0
    mensajeFin BYTE "Fin del programa", 0

.code
main PROC
    mov edx, OFFSET mensajeInicio
    call WriteString
    call Crlf

    ; Primera llamada.
    call mostrarAviso
    mov eax, 10

    ; Segunda llamada.
    call mostrarAviso
    mov eax, 20

    mov edx, OFFSET mensajeFin
    call WriteString
    call Crlf


    exit
main ENDP

; Mostrar un mensaje y regresar al punto despues del llamado.
mostrarAviso PROC
    mov edx, OFFSET mensajeProcedimiento
    call WriteString
    call Crlf
    ret
mostrarAviso ENDP

END main
