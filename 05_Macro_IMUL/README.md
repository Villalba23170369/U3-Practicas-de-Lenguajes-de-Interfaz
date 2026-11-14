# Práctica 05 - Completar la macro con IMUL

Materia: Lenguajes de Interfaz
Unidad: #3
Alumno: Villalba Rodriguez Kevin Eliazar
No.Control: 23170369
Horario: 10:00 - 11:00
Docente: Ing. José Luis Medina Jiménez



## ¿Qué hace?
Define la macro `MostrarMensaje` para imprimir cadenas y `MultiplicarValores` para calcular el producto de dos operandos (`valorA` = 6 y `valorB` = 7) dejando el resultado (`42`) en `EAX` sin imprimirlo dentro de la macro. Después, `main` toma ese valor desde `EAX`, lo muestra con `WriteDec` y cierra con el mensaje de despedida.

## ¿Qué se comprobó?
* Se puede separar la lógica de cálculo dentro de una macro (`MultiplicarValores`) de la salida en pantalla (`WriteDec` en `main`), dejando el resultado disponible en `EAX` para seguir usándolo en otras instrucciones.
* Las macros permiten modularizar operaciones matemáticas sencillas evitando la sobrecarga de llamadas a procedimientos (`CALL`/`RET`).