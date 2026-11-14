# Práctica 01 - Llamadas a un procedimiento

Materia: Lenguajes de Interfaz
Unidad: #3
Alumno: Villalba Rodriguez Kevin Eliazar
No.Control: 23170369
Horario: 10:00 - 11:00
Docente: Ing. José Luis Medina Jiménez



## ¿Qué hace?
Imprime un mensaje de inicio, llama dos veces al procedimiento `mostrarAviso` para imprimir otro mensaje en consola (asignando `10` y `20` al registro `EAX` después de cada llamada) y muestra un mensaje final antes de terminar.

## ¿Qué se comprobó?
* Se puede reutilizar un mismo procedimiento llamándolo varias veces sin repetir código.
* La instrucción `CALL` salta al procedimiento y `RET` regresa exactamente a la siguiente línea donde se quedó el programa en `main`.