# Práctica 03 - Validación de cadena no vacía

Alumno: Medina González Cristian Roberto  
Matrícula: 23170234  
Materia: Lenguajes de Interfaz - Unidad 3  
Docente: Ing. José Luis Medina Jiménez  
Horario: 10:00 - 11:00

## Qué hace

Comprueba si el primer byte de Cadena1 es cero. Validacion devuelve ECX=0 para una cadena vacía y ECX=1 si tiene al menos un carácter. TEST y JZ seleccionan la salida. No calcula la longitud.

## Salida esperada

```text
Hola
```

## Qué se comprobó

Ejecutada y salida comprobada: Hola

También se compiló y ejecutó una variante temporal con Cadena1 BYTE 0: mostró "La cadena esta vacia". El archivo entregado conserva "Hola".

## Cómo ejecutar y depurar

Abrir Practica_U3_03.sln en Visual Studio 2022 y seleccionar Debug y x86. Compilar con Ctrl+Mayús+B. Ejecutar con Ctrl+F5 para conservar la consola abierta, o colocar un punto de interrupción en main y usar F5 y F10 para depurar. Usar F11 para entrar en una llamada a un procedimiento propio.

Después de compilar también se puede abrir Ejecutar.cmd; espera una tecla al terminar. Si se prefiere la línea de comandos, abrir x86 Native Tools Command Prompt for VS 2022, entrar en esta carpeta y ejecutar Compilar.cmd.

Se requiere Irvine32 en C:\Irvine. Si está en otra carpeta, ajustar IrvineDir en Proyecto/Practica_U3_03.vcxproj. Para Compilar.cmd, definir la variable de entorno IrvineDir con la ruta correcta. Las carpetas Debug se generan al compilar y no se incluyen en el ZIP de fuentes.

