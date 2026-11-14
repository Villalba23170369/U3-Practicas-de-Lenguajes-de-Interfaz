# Práctica 05 - Completar la macro con IMUL

Alumno: Medina González Cristian Roberto  
Matrícula: 23170234  
Materia: Lenguajes de Interfaz - Unidad 3  
Docente: Ing. José Luis Medina Jiménez  
Horario: 10:00 - 11:00

## Qué hace

Completa la indicación del documento: agrega una macro con IMUL y dos valores. MultiplicarValores recibe 6 y 7, deja 42 en EAX y main muestra el resultado.

## Salida esperada

```text
Bienvenido al sistema
Resultado de 6 por 7:
42
Hasta luego, vuelva pronto
```

## Qué se comprobó

Ejecutada y salida comprobada: Bienvenido al sistema / Resultado de 6 por 7: / 42 / Hasta luego, vuelva pronto

## Cómo ejecutar y depurar

Abrir Practica_U3_05.sln en Visual Studio 2022 y seleccionar Debug y x86. Compilar con Ctrl+Mayús+B. Ejecutar con Ctrl+F5 para conservar la consola abierta, o colocar un punto de interrupción en main y usar F5 y F10 para depurar. Usar F11 para entrar en una llamada a un procedimiento propio.

Después de compilar también se puede abrir Ejecutar.cmd; espera una tecla al terminar. Si se prefiere la línea de comandos, abrir x86 Native Tools Command Prompt for VS 2022, entrar en esta carpeta y ejecutar Compilar.cmd.

Se requiere Irvine32 en C:\Irvine. Si está en otra carpeta, ajustar IrvineDir en Proyecto/Practica_U3_05.vcxproj. Para Compilar.cmd, definir la variable de entorno IrvineDir con la ruta correcta. Las carpetas Debug se generan al compilar y no se incluyen en el ZIP de fuentes.

