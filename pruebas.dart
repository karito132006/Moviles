void main() {
  // var i = 5;
  // var age = "20";
  // var bool = true;
  // int number = 10;
  // double decimal = 3.14;
  // String name = "Jane Smith";

  // //variables fijas=estas no pueden cambiar de valor una vez asignadas.
  // const pi = 3.14159;
  // const String country = "USA";
  // //tiempor de compilacion=las variables const se definen en tiempo de compilacion y no pueden cambiar.(Const)
  // //tiempo de ejecucion=las variables var se definen en tiempo de ejecucion y pueden cambiar de tipo.(Finally)
  // //utilizamos print para mostrar los valores de las variables.
  // print(
  //   'El nombre es: $name, tiene $age años, y su número favorito es $number.',
  // );
  // print('El valor de pi es: $pi y el país es: $country.');
  // print(
  //   'El valor de i es: $i, el valor de age es: $age, el valor de bool es: $bool.',
  // );
  // print('El número es: $number y el decimal es: $decimal.');

  // //variables de tipo dynamic=estas pueden cambiar de tipo en tiempo de ejecucion.
  // dynamic variable = "Hello";
  // variable = 10;
  // print(variable);

  // //operaciones
  // int a = 20;
  // int b = 5;
  // int sum = a + b;
  // print('La suma de $a y $b es: $sum');
  // int rest = a - b;
  // print('La resta de $a y $b es: $rest');
  // int mult = a * b;
  // print('La multiplicación de $a y $b es: $mult');
  // int div =
  //     a ~/
  //     b; //el signo ~~ indica división entera y quita los decimales. sino la division se maneja con la variable double.
  // print('La división de $a y $b es: $div');

  //LISTAS; son colecciones de elementos que pueden ser de diferentes tipos.

  // List<String> fruits = ['Apple', 'Banana', 'Orange'];
  // print('Lista de frutas: $fruits');

  // fruits.add('Mango'); //agrega un elemento a la lista.
  // print('Lista de frutas actualizada: $fruits');

  // fruits.remove('Banana'); //elimina un elemento de la lista.
  // print('Lista de frutas después de eliminar Banana: $fruits');

  // fruits.insert(0,'Strawberry'); //inserta un elemento en una posición específica.
  // print('Lista de frutas después de insertar Strawberry: $fruits');

  // //MAP; es una colección de pares clave-valor.
  // Map<String,int>ages={
  //   "Alice":30,
  //   "Bob":25,
  //   "Charlie":35
  // };

  // //operaciones con Map
  // ages['David'] = 28; //agrega un nuevo par clave-valor.
  // print(ages);

  // ages.remove('Bob'); //elimina un par clave-valor.
  // print(ages);

  // //se pueden agregar,eliminar pero no editar el valor de una clave.
  // //para editar el valor de una clave, se debe eliminar y agregar nuevamente.

  // ages['Alice'] = 31; //actualiza el valor de una clave existente.
  // print(ages);

  //SETS; son colecciones de elementos únicos, no permiten duplicados.
  // Set enteros = {1, 2, 3, 4, 5};
  // print(enteros);
  // enteros.add(6); //agrega un elemento al set.
  // print(enteros);
  // enteros.add(20);
  // print(enteros);
  // enteros.remove(3); //elimina un elemento del set.
  // print(enteros);

  //operaciones con Sets
  //pedir datos al usuario
  // print("Ingrese un nombre:");
  // String? name = stdin.readLineSync(); //lee una línea de entrada del usuario.
  // print("Ingrese su edad:");
  // int? age =int.tryParse(stdin.readLineSync()?? '0'); // convierte la entrada del usuario a un entero, si no es posible, asigna 0.

  //Potencia:
  // print("Ingrese un número:");
  // int? valor1 = int.tryParse(stdin.readLineSync() ?? '0'); //el signo ?? indica que si el valor es nulo, se asigna 0.
  // print("Ingrese otro número:");
  // int? valor2 = int.tryParse(stdin.readLineSync()!); //el signo ! indica que el valor no puede ser nulo, si es nulo, se lanza una excepción
  // // int potencia = valor1! * valor2!; //calcula la potencia de los números ingresados.
  // int potencia = pow(valor1!, valor2!).toInt(); //utiliza la función pow de la librería dart:math para calcular la potencia.
  // print("La potencia de $valor1 elevado a $valor2 es: $potencia");

  //Funciones Matematicas
  // int sumar(int a, int b) {
  //   return a + b; //suma dos números y devuelve el resultado.
  // }

  // print("digite el primer numero");
  // int? num1 = int.tryParse(stdin.readLineSync()!);
  // print("digite el segundo numero");
  // int? num2 = int.tryParse(stdin.readLineSync()!);
  // int resultado = sumar(num1!, num2!); //llama a la función sumar con los números ingresados.
  // print("La suma de $num1 y $num2 es: $resultado");

  //Ejercicio:
  // print("Bienvenido a Nuestra Tienda!");
  // print("Ingrese el nombre de la prenda que necesita:");
  // String? name = stdin.readLineSync();
  // print("Ingrese el precio de la prenda:");
  // double? price = double.tryParse(stdin.readLineSync() ?? '0.0');
  // print("La Tienda Cuenta con un descuento del 15% en todas las prendas.");
  // double discount = price! * 0.15; //calcula el descuento del 15%.
  // double finalPrice = price - discount; //calcula el precio final después del descuento.
  // print("El precio final de la prenda $name es: \$${finalPrice.toStringAsFixed(2)}");

  //Hacer ejercicios sobre ciclos;if,else,concdicionales,for,while,do while,switch,case,etc
}
