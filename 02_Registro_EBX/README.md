# Práctica 02 - Modificación del registro EBX

Materia: Lenguajes de Interfaz
Unidad: #3
Alumno: Villalba Rodriguez Kevin Eliazar
No.Control: 23170369
Horario: 10:00 - 11:00
Docente: Ing. José Luis Medina Jiménez


## ¿Qué hace?
Asigna el valor `10` al registro `EBX`, llama a `Procedimiento1` para sumarle `5` a ese registro y finalmente imprime en consola el resultado actualizado (`15`).

## ¿Qué se comprobó?
* Los registros de propósito general (como `EBX`) funcionan como variables globales dentro del programa: mantienen su valor modificado al entrar y salir de un procedimiento.
* Se pueden pasar datos hacia y desde un procedimiento directamente a través de los registros sin necesidad de usar memoria extra.