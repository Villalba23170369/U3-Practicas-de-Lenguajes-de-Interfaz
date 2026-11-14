# Práctica 03 - Validación de cadena no vacía

Materia: Lenguajes de Interfaz
Unidad: #3
Alumno: Villalba Rodriguez Kevin Eliazar
No.Control: 23170369
Horario: 10:00 - 11:00
Docente: Ing. José Luis Medina Jiménez



## ¿Qué hace?
Apunta `ESI` a `Cadena1` (`"Hola"`) y llama al procedimiento `Validacion` para verificar si su primer carácter es el terminador nulo (`0`). El procedimiento devuelve `ECX = 1` si contiene texto o `ECX = 0` si está vacía; luego `main` evalúa `ECX` con `TEST` y `JZ` para imprimir la cadena original o el mensaje `"La cadena esta vacia"`.

## ¿Qué se comprobó?
* Se puede leer el contenido de memoria directamente mediante direccionamiento indirecto (`[esi+ecx]`) sin recorrer toda la cadena.
* La instrucción `TEST` permite evaluar si un registro es cero actualizando la bandera `ZF` (Zero Flag) para hacer saltos condicionales (`JZ`) sin alterar el valor almacenado en el registro.