//funcion main que funciona para iniciar la aplicacion.
//las variables son de tipo dynamic, por lo que pueden cambiar de tipo en tiempo de ejecucion.
import 'dart:io';
import 'dart:math';

void main() {
  //Actividad 1:

  //Menu con opciones para el usuario.
  while (true) {
    print("\nSeleccione una opción:");
    print("1. Calcular distancia recorrida por un automóvil.");
    print("2. Calcular promedio de un estudiante.");
    print("3. Calcular puntaje de un equipo de futbol.");
    print("4. Calcular total devengado por un empleado.");
    print("5. Calcular hipotenusa de un triángulo rectángulo.");
    print("6. Convertir temperatura de Celsius a Fahrenheit.");
    print("0. Salir.");
    stdout.write("Ingrese el número de la opción que desea ejecutar: ");
    int? opcion = int.tryParse(stdin.readLineSync()!);

    if (opcion == null || opcion < 0 || opcion > 6) {
      print("Opción inválida. Por favor, ingrese un número del 0 al 6.");
      continue;
    }

    if (opcion == 0) {
      print("Gracias por usar la aplicación.");
      break;
    }

    switch (opcion) {
      case 1:
        calcularDistancia();
        break;
      case 2:
        calcularPromedio();
        break;
      case 3:
        calcularPuntajeFutbol();
        break;
      case 4:
        calcularTotalDevengado();
        break;
      case 5:
        calcularHipotenusa();
        break;
      case 6:
        convertirTemperatura();
        break;
    }
  }
}

//1.Se desea calcular la distancia recorrida (D) por un automóvil que tiene velocidad constante
//(m/s) durante un tiempo T (Sg), considerar que es un MRU (Movimiento Rectilíneo
//Uniforme). Tenga en cuenta que la formula del movimiento rectilíneo es:
//D = V * T
void calcularDistancia() {
  print("Ingrese la velocidad del automóvil (m/s):");
  double? velocidad = double.tryParse(stdin.readLineSync()!);
  print("Ingrese el tiempo de recorrido (s):");
  double? tiempo = double.tryParse(stdin.readLineSync()!);
  double distancia = velocidad! * tiempo!; //calcula la distancia recorrida.
  print("La distancia recorrida por el automóvil es: $distancia metros");
}

//2.Se necesita obtener el promedio de un estudiante a partir de sus tres notas parciales. El
//estudiante debe digitar sus tres notas y el sistema deberá darle el promedio del semestre.
void calcularPromedio() {
  print("Ingrese la primera nota:");
  double? nota1 = double.tryParse(stdin.readLineSync()!);
  print("Ingrese la segunda nota:");
  double? nota2 = double.tryParse(stdin.readLineSync()!);
  print("Ingrese la tercera nota:");
  double? nota3 = double.tryParse(stdin.readLineSync()!);
  double promedio =
      (nota1! + nota2! + nota3!) / 3; //calcula el promedio de las tres notas.
  print("El promedio del estudiante es: $promedio");
}

//3.Elaborar un algoritmo que permita ingresar el número de partidos ganados, perdidos y
// empatados, de un equipo en un torneo de futbol. Se debe de imprimir el puntaje total del
// equipo, tenga en cuenta que:
// a. Por cada partido ganado obtendrá 3 puntos.
// b. Por cada partido empatado 1 punto.
// c. Por cada partido perdido 0 puntos.
//Se desea imprimir la cantidad de partidos ganados, perdidos, empatados y el cálculo
// completo de la cantidad de puntos obtenidos del equipo de futbol.
calcularPuntajeFutbol() {
  print("Ingrese el número de partidos ganados:");
  int? partidosGanados = int.tryParse(stdin.readLineSync()!);
  print("Ingrese el número de partidos perdidos:");
  int? partidosPerdidos = int.tryParse(stdin.readLineSync()!);
  print("Ingrese el número de partidos empatados:");
  int? partidosEmpatados = int.tryParse(stdin.readLineSync()!);
  int puntosTotales =
      (partidosGanados! * 3) +
      (partidosEmpatados! * 1); //calcula el puntaje total del equipo.
  print(
    "El equipo ha ganado $partidosGanados partidos, perdido $partidosPerdidos partidos, y empatado $partidosEmpatados partidos.",
  );
  print("El puntaje total del equipo es: $puntosTotales puntos");
}

//4. Se requiere el algoritmo para elaborar la planilla de un empleado. Para ello se debe digitar:
// nombre del empleado, la cantidad de horaslaboradas en el mes y la tarifa por hora. Se debe
// calcular el total devengado por el empleado en el mes e imprimir: Nombre del empleado,
// cantidad de horas laboradas y total devengado.
void calcularTotalDevengado() {
  print("Ingrese el nombre del empleado:");
  String? nombreEmpleado = stdin.readLineSync();
  print("Ingrese la cantidad de horas trabajadas en el mes:");
  int? horasTrabajadas = int.tryParse(stdin.readLineSync()!);
  print("Ingrese la tarifa por hora:");
  double? tarifaPorHora = double.tryParse(stdin.readLineSync()!);
  double totalDevengado =
      horasTrabajadas! *
      tarifaPorHora!; //calcula el total devengado por el empleado.
  print("Nombre del empleado: $nombreEmpleado");
  print("Cantidad de horas trabajadas: $horasTrabajadas");
  print(
    "Total devengado: \$${totalDevengado.toStringAsFixed(2)}",
  ); //muestra el total devengado con dos decimales.
}

//5.Se tiene un triángulo rectángulo cuyos lados deberán ser digitados por el usuario. Se debe
// hallar la hipotenusa teniendo en cuenta la formula: H = raíz cuadrada(a**2 + b**2).
// Para aplica raíz cuadrada se usa la función sqrt, y para aplicar potencia se usa la función
// pow. Para ello debe importar la librería import 'dart:math';
void calcularHipotenusa() {
  print("Ingrese el valor del cateto a:");
  double? catetoA = double.tryParse(stdin.readLineSync()!);
  print("Ingrese el valor del cateto b:");
  double? catetoB = double.tryParse(stdin.readLineSync()!);
  double hipotenusa = sqrt(
    pow(catetoA!, 2) + pow(catetoB!, 2),
  ); //calcula la hipotenusa del triángulo rectángulo.
  print("La hipotenusa del triángulo rectángulo es: $hipotenusa");
}

//6.Se tiene un horno en casa con temperaturas en grados Celsius centígrado), requiere
// transformar la temperatura de 70°C a grados Fahrenheit. Para ello tenga en cuenta la
// siguiente fórmula.
// F = (C * 1.8) + 32
void convertirTemperatura() {
  print("Ingrese la temperatura en grados Celsius:");
  double? temperaturaCelsius = double.tryParse(stdin.readLineSync()!);
  double temperaturaFahrenheit =
      (temperaturaCelsius! * 1.8) +
      32; //convierte la temperatura de Celsius a Fahrenheit.
  print("La temperatura en grados Fahrenheit es: $temperaturaFahrenheit");
}
