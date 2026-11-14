# Práctica 04 - Macro de multiplicación

Materia: Lenguajes de Interfaz
Unidad: #3
Alumno: Villalba Rodriguez Kevin Eliazar
No.Control: 23170369
Horario: 10:00 - 11:00
Docente: Ing. José Luis Medina Jiménez


## ¿Qué hace?
Define dos macros (`MostrarMensaje` y `Multiplicar`) para imprimir textos y realizar operaciones sin usar procedimientos. En `main`, invoca `MostrarMensaje` para mostrar la bienvenida y el encabezado, usa `Multiplicar` con `num1` (`8`) y `num2` (`5`) para calcular e imprimir `40` mediante `IMUL`, y cierra con un mensaje de despedida.

## ¿Qué se comprobó?
* Las macros permiten pasar parámetros directamente (`texto`, `valor1`, `valor2`) y reutilizar bloques de código con sintaxis más limpia.
* A diferencia de un procedimiento (`CALL`/`RET`), el ensamblador expande (copia y pega) las instrucciones de la macro directamente en cada lugar donde se invoca al momento de ensamblar.