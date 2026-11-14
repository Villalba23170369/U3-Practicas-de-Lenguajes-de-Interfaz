; Materia: Lenguajes de Interfaz
; Unidad: #3
; Alumno: Villalba Rodriguez Kevin Eliazar
; No.Control: 23170369
; Horario: 10:00 - 11:00
; Docente: Ing. José Luis Medina Jiménez
; Práctica 04: Uso de Macros (MACRO y ENDM)

INCLUDE Irvine32.inc

MostrarMensaje MACRO texto
    mov edx, OFFSET texto           ; Carga la dirección de la cadena en EDX
    call WriteString
    call Crlf
ENDM

Multiplicar MACRO valor1, valor2
    mov eax, valor1                 ; Carga el primer operando en EAX
    imul eax, valor2                ; Multiplica con signo: EAX = valor1 * valor2
    call WriteDec                   ; Imprime el resultado almacenado en EAX
    call Crlf
ENDM

.data
    mensajeBienvenida BYTE "Bienvenido al sistema", 0
    mensajeProducto BYTE "Resultado de la multiplicacion:", 0
    mensajeFin BYTE "Hasta luego, vuelva pronto", 0
    num1 DWORD 8
    num2 DWORD 5

.code
main PROC
    MostrarMensaje mensajeBienvenida  ; Expande la macro para imprimir bienvenida
    MostrarMensaje mensajeProducto    ; Expande la macro para imprimir encabezado

    Multiplicar num1, num2            ; Expande la macro: calcula 8 * 5 e imprime 40

    MostrarMensaje mensajeFin         ; Expande la macro para imprimir despedida
    exit
main ENDP

END main