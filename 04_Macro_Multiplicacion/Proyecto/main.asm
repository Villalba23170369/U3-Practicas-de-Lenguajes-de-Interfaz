; Materia: Lenguajes de Interfaz - Unidad 3
; Alumno: Medina González Cristian Roberto
; Matrícula: 23170234
; Horario: 10:00 - 11:00
; Docente: Ing. José Luis Medina Jiménez
; Práctica 04: Macro de multiplicación
; Descripción: Utiliza macros para mostrar mensajes y multiplicar 8 por 5.

INCLUDE Irvine32.inc

; Recibe el nombre de una cadena terminada en cero. Modifica EDX.
; Al ensamblar, estas instrucciones se insertan donde usamos la macro.
MostrarMensaje MACRO texto
    mov edx, OFFSET texto
    call WriteString
    call Crlf
ENDM

; Recibe dos valores de 32 bits o inmediatos compatibles con IMUL.
; Deja el producto en EAX y lo muestra. Modifica EAX y las banderas.
; Los datos de esta práctica son positivos y su producto cabe en 32 bits.
Multiplicar MACRO valor1, valor2
    mov eax, valor1
    imul eax, valor2
    call WriteDec
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
    MostrarMensaje mensajeBienvenida
    MostrarMensaje mensajeProducto

    ; La macro toma los dos números y muestra el producto: cuarenta.
    Multiplicar num1, num2

    MostrarMensaje mensajeFin
    exit
main ENDP

END main
