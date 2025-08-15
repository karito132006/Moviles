import 'dart:io';

//1....Usa listas para almacenar el conjunto de libros.
List<Map<String, dynamic>> productos = [];
void main() {
  //Menu con opciones para el usuario.
  //3....Usa un ciclo while para mantener el menú activo hasta que el usuario elija salir.
  while (true) {
    print("\n --------------------Menú de Gestión de Libros--------------------------");
    print("1.Agregar Producto.");
    print("2.Listar Productos.");
    print("3.Actualizar Producto.");
    print("4.Eliminar Producto.");
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
        agregarProducto();
        break;
      case 2:
        listarProductos();
        break;
      case 3:
        actualizarProducto();
        break;
      case 4:
        eliminarProducto();
        break;
    }
  }
}

//5....Muestra mensajes claros y validados al usuario.
//6...Controla errores como:indices fuera de rango, entradas vacias y tipos de datos incorrectos.
//-----------------------------------Agregar Libro-----------------------------------------------
void agregarProducto() {
  String? nombre;
  while (true) {
    print("Ingrese el Nombre del Producto:");
    nombre = stdin.readLineSync();
    if (nombre != null && nombre.trim().isNotEmpty) break;
    print("El nombre no puede estar vacío. Ingrese un nombre válido.");
  }

  String? precio;
  while (true) {
    print("Ingrese el Precio del Producto:");
    precio = stdin.readLineSync();
    if (precio != null && precio.trim().isNotEmpty) break;
    print("El precio no puede estar vacío. Ingrese un precio válido.");
  }

  String? cantidad;
  while (true) {
    print("Ingrese la Cantidad de Productos Disponibles:");
    cantidad = stdin.readLineSync();
    if (cantidad != null && cantidad.trim().isNotEmpty) break;
    print("La cantidad no puede estar vacía. Ingrese una cantidad válida.");
  }

  // Guardar el producto
  productos.add({
    'nombre': nombre.trim(),
    'precio': precio.trim(),
    'cantidad': cantidad.trim(),
  });

  print("El Producto fue agregado con éxito.");
}

// //----------------------------------------Listar-----------------------------------------------
void listarProductos() {
  if (productos.isEmpty) {
    print(
      "Aun no hay Productos registrados. Registre un Producto primero para poder listar.",
    );
    return;
  }

  print("\nLista de Productos:");
  for (int i = 0; i < productos.length; i++) {
    var producto = productos[i];
    print("${i + 1}. Producto: ${producto['nombre']}");
    print("   Precio: ${producto['precio']}");
    print("   Cantidad: ${producto['cantidad']}");
    print("----------------------------------");
  }
}

// //-----------------------------------------Actualizar-----------------------------------------------
void actualizarProducto() {
  listarProductos();
  if (productos.isEmpty) return;

  stdout.write("Ingrese el índice del Producto a actualizar: ");
  int? indice = int.tryParse(stdin.readLineSync() ?? '');
  if (indice == null || indice < 1 || indice > productos.length) {
    print("Índice fuera de rango.");
    return;
  }

  stdout.write("Nuevo nombre (deje vacío para no cambiar): ");
  String? nuevoNombre = stdin.readLineSync();
  stdout.write("Nuevo Precio (deje vacío para no cambiar): ");
  String? nuevoPrecio = stdin.readLineSync();
  stdout.write("Nueva Cantidad  (deje vacío para no cambiar): ");
  String? nuevaCantidad = stdin.readLineSync();

  if (nuevoNombre != null && nuevoNombre.trim().isNotEmpty) {
    productos[indice - 1]['nombre'] = nuevoNombre.trim();
  }
  if (nuevoPrecio != null && nuevoPrecio.trim().isNotEmpty) {
    productos[indice - 1]['precio'] = nuevoPrecio.trim();
  }
  if (nuevaCantidad != null && nuevaCantidad.trim().isNotEmpty) {
    productos[indice - 1]['cantidad'] = nuevaCantidad.trim();
  }
  print("El Producto se ha actualizado correctamente.");
}

// //-------------------------------------Eliminar-----------------------------------------------
void eliminarProducto() {
  listarProductos();
  if (productos.isEmpty) return;

  stdout.write("Ingrese el índice del Producto a eliminar: ");
  int? indice = int.tryParse(stdin.readLineSync() ?? '');
  if (indice == null || indice < 1 || indice > productos.length) {
    print("Índice fuera de rango.");
    return;
  }

  var productoEliminado = productos.removeAt(indice - 1);
  print(
    "El Producto '${productoEliminado['nombre']}' fue eliminado correctamente.",
  );
}
