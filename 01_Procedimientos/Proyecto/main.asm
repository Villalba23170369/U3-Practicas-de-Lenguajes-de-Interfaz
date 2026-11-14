;; Materia: Lenguajes de Interfaz
; Unidad: #3
; Alumno: Villalba Rodriguez Kevin Eliazar.
; No.Control: 23170369
; Horario: 10:00 - 11:00
; Docente: Ing. José Luis Medina Jiménez
; Práctica 01: Uso de Procedimientos (CALL y RET)

INCLUDE Irvine32.inc

.data
    mensajeInicio BYTE "Inicio de programa", 0
    mensajeProcedimiento BYTE "Estoy dentro del procedimiento", 0
    mensajeFin BYTE "Fin del programa", 0

.code
main PROC
    mov edx, OFFSET mensajeInicio   ; Imprime el mensaje inicial del programa
    call WriteString
    call Crlf

    call mostrarAviso               ; Primera llamada: salta a mostrarAviso y guarda retorno en pila
    mov eax, 10                     ; Se ejecuta inmediatamente después del primer RET

    call mostrarAviso               ; Segunda llamada: reutiliza el mismo procedimiento
    mov eax, 20                     ; Se ejecuta inmediatamente después del segundo RET

    mov edx, OFFSET mensajeFin      ; Imprime el mensaje de cierre
    call WriteString
    call Crlf

    exit
main ENDP

; Imprime un aviso en consola y devuelve el control al punto de llamada
mostrarAviso PROC
    mov edx, OFFSET mensajeProcedimiento
    call WriteString
    call Crlf
    ret                             ; Extrae la dirección de retorno de la pila y vuelve a main
mostrarAviso ENDP

END main