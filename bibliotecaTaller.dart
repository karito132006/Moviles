import 'dart:io';
// import 'dart:math';

//1....Usa listas para almacenar el conjunto de libros.
List<Map<String, dynamic>> biblioteca = [];
void main() {
  //Menu con opciones para el usuario.
  //3....Usa un ciclo while para mantener el menú activo hasta que el usuario elija salir.
  while (true) {
    print("\n Menú de Gestión de Libros");
    print("1.Agregar Libro.");
    print("2.Listar Libros.");
    print("3.Actualizar Libro.");
    print("4.Eliminar Libro.");
    print("0.Salir.");
    stdout.write("Seleccione una opción: ");
    int? opcion = int.tryParse(stdin.readLineSync()!);

    if (opcion == null || opcion < 0 || opcion > 4) {
      print("Opción inválida. Por favor, ingrese un número del 0 al 4.");
      continue;
    }
    if (opcion == 0) {
      print("Gracias por usar la aplicación.");
      break;
    }
    //4....Controla las opciones del menú con switch-case.
    switch (opcion) {
      case 1:
        agregarLibro();
        break;
      case 2:
        listarLibros();
        break;
      case 3:
        actualizarLibro();
        break;
      case 4:
        eliminarLibro();
        break;
    }
  }
}

//5....Muestra mensajes claros y validados al usuario.
//6...Controla errores como:indices fuera de rango, entradas vacias y tipos de datos incorrectos.
//-----------------------------------Agregar Libro-----------------------------------------------
void agregarLibro() {
  print("Ingrese el Titulo del Libro.");
  String? titulo = stdin.readLineSync();

  if (titulo == null || titulo.trim().isEmpty) {
    print("El título no puede estar vacío.Ingrese un título válido.");
    return;
  }
  print("Ingrese el Autor del Libro.");
  String? autor = stdin.readLineSync();
  if (autor == null || autor.trim().isEmpty) {
    print("El autor no puede estar vacío.Ingrese un autor válido.");
    return;
  }
  print("Ingrese el Año de Publicación del Libro.");
  int? anio = int.tryParse(stdin.readLineSync()!);
  if (anio == null) {
    print("El año debe ser un número válido.Ingrese un año válido.");
    return;
  }
  // 2....Cada libro debe ser un mapa con las claves: 'titulo', 'autor', 'anio'.
  biblioteca.add({
    'titulo': titulo.trim(),
    'autor': autor.trim(),
    'anio': anio,
  });
  print("El Libro fue agregado con Exito.");
}

//----------------------------------------Listar-----------------------------------------------
void listarLibros() {
  if (biblioteca.isEmpty) {
    print(
      "Aun no hay libros registrados. Registre un libro primero para poder listar.",
    );
    return;
  }

  print("\nLista de Libros:");
  for (int i = 0; i < biblioteca.length; i++) {
    var libro = biblioteca[i];
    print("${i + 1}. Título: ${libro['titulo']}");
    print("   Autor: ${libro['autor']}");
    print("   Año: ${libro['anio']}");
    print("----------------------------------");
  }
}

//-----------------------------------------Actualizar-----------------------------------------------
void actualizarLibro() {
  listarLibros();
  if (biblioteca.isEmpty) return;

  stdout.write("Ingrese el índice del libro a actualizar: ");
  int? indice = int.tryParse(stdin.readLineSync() ?? '');
  if (indice == null || indice < 1 || indice > biblioteca.length) {
    print("Índice fuera de rango.");
    return;
  }

  stdout.write("Nuevo título (deje vacío para no cambiar): ");
  String? nuevoTitulo = stdin.readLineSync();
  stdout.write("Nuevo autor (deje vacío para no cambiar): ");
  String? nuevoAutor = stdin.readLineSync();
  stdout.write("Nuevo año (deje vacío para no cambiar): ");
  String? entradaAnio = stdin.readLineSync();

  if (nuevoTitulo != null && nuevoTitulo.trim().isNotEmpty) {
    biblioteca[indice - 1]['titulo'] = nuevoTitulo.trim();
  }
  if (nuevoAutor != null && nuevoAutor.trim().isNotEmpty) {
    biblioteca[indice - 1]['autor'] = nuevoAutor.trim();
  }
  if (entradaAnio != null && entradaAnio.trim().isNotEmpty) {
    int? nuevoAnio = int.tryParse(entradaAnio);
    if (nuevoAnio != null) {
      biblioteca[indice - 1]['anio'] = nuevoAnio;
    } else {
      print("Año inválido, no se actualizó el año.");
    }
  }

  print("El Libro se ha actualizado correctamente.");
}

//-------------------------------------Eliminar-----------------------------------------------
void eliminarLibro() {
  listarLibros();
  if (biblioteca.isEmpty) return;

  stdout.write("Ingrese el índice del libro a eliminar: ");
  int? indice = int.tryParse(stdin.readLineSync() ?? '');
  if (indice == null || indice < 1 || indice > biblioteca.length) {
    print("Índice fuera de rango.");
    return;
  }

  var libroEliminado = biblioteca.removeAt(indice - 1);
  print("El Libro '${libroEliminado['titulo']}' fue eliminado correctamente.");
}
