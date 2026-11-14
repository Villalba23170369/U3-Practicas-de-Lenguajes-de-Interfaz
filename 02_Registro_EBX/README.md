# Práctica 02 - Modificación del registro EBX

Alumno: Medina González Cristian Roberto  
Matrícula: 23170234  
Materia: Lenguajes de Interfaz - Unidad 3  
Docente: Ing. José Luis Medina Jiménez  
Horario: 10:00 - 11:00

## Qué hace

Inicializa EBX en 10 y un procedimiento le suma 5. Después copia el resultado a EAX para mostrarlo con WriteDec.

## Salida esperada

```text
Valor de EBX: 15
```

## Qué se comprobó

Ensamblado y enlace correctos. Ejecución bloqueada: Defender puso el ejecutable en cuarentena. Resultado esperado por revisión del código: 15.

## Cómo ejecutar y depurar

Abrir Practica_U3_02.sln en Visual Studio 2022 y seleccionar Debug y x86. Compilar con Ctrl+Mayús+B. Ejecutar con Ctrl+F5 para conservar la consola abierta, o colocar un punto de interrupción en main y usar F5 y F10 para depurar. Usar F11 para entrar en una llamada a un procedimiento propio.

Después de compilar también se puede abrir Ejecutar.cmd; espera una tecla al terminar. Si se prefiere la línea de comandos, abrir x86 Native Tools Command Prompt for VS 2022, entrar en esta carpeta y ejecutar Compilar.cmd.

Se requiere Irvine32 en C:\Irvine. Si está en otra carpeta, ajustar IrvineDir en Proyecto/Practica_U3_02.vcxproj. Para Compilar.cmd, definir la variable de entorno IrvineDir con la ruta correcta. Las carpetas Debug se generan al compilar y no se incluyen en el ZIP de fuentes.

