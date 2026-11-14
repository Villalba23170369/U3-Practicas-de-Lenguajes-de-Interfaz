; Materia: Lenguajes de Interfaz
; Unidad: #3
; Alumno: Villalba Rodriguez Kevin Eliazar
; No.Control: 23170369
; Horario: 10:00 - 11:00
; Docente: Ing. José Luis Medina Jiménez
; Práctica 05: Agregar una macro con IMUL

INCLUDE Irvine32.inc

MostrarMensaje MACRO texto
    mov edx, OFFSET texto           ; Carga la dirección de la cadena en EDX
    call WriteString
    call Crlf
ENDM

MultiplicarValores MACRO valor1, valor2
    mov eax, valor1                 ; Carga el primer operando en EAX
    imul eax, valor2                ; Multiplica con signo y deja el producto en EAX
ENDM

.data
    mensajeBienvenida BYTE "Bienvenido al sistema", 0
    mensajeResultado BYTE "Resultado de 6 por 7:", 0
    mensajeFin BYTE "Hasta luego, vuelva pronto", 0
    valorA DWORD 6
    valorB DWORD 7

.code
main PROC
    MostrarMensaje mensajeBienvenida  ; Expande la macro para imprimir bienvenida
    MostrarMensaje mensajeResultado   ; Expande la macro para imprimir encabezado

    MultiplicarValores valorA, valorB ; Expande la macro: calcula 6 * 7 y guarda 42 en EAX

    call WriteDec                     ; Imprime el valor almacenado en EAX
    call Crlf

    MostrarMensaje mensajeFin         ; Expande la macro para imprimir despedida
    exit
main ENDP

END main