//Importar libreria de entrada y salida de datos
import 'dart:io';
//Definir clase de detalle pedidos
class TDetallePedido {
  //Atributos
  int detalleid;
  int pedidoid;
  int productoid;
  int  cantidad;
  double preciounitario;
  double subtotal;
  String notas;

  //Constructor
  TDetallePedido(this.detalleid, this.pedidoid, this.productoid, this.cantidad, this.preciounitario, this.subtotal, this.notas);

  //Funcion para capturar datos
  void capturardatos(){
    print("Ingrese el ID de los datalles:");
    detalleid = int.parse(stdin.readLineSync()!);
    print("Ingrese el ID del pedido:");
    pedidoid = int.parse(stdin.readLineSync()!);
    print("Ingrese el ID del producto:");
    productoid = int.parse(stdin.readLineSync()!);
    print("Ingrese la cantidad:");
    cantidad = int.parse(stdin.readLineSync()!);
    print("Ingrese el precio unitario:");
    preciounitario = double.parse(stdin.readLineSync()!);
    print("Ingrese el subtotal:");
    subtotal = double.parse(stdin.readLineSync()!);
    print("Ingrese las notas:");
    notas = stdin.readLineSync()!;
  }
}//Fin de la tabla pedido
//----------------------------------------------------------------------
//Definir clase Inventario
class TInventario{
  //Atributos
  int inventarioid;
  int productoid;
  int cantidadinicial;
  int cantidadactual;
  DateTime fechaactualizacion;
  String ubicacion;
  String notas;

  //Constructor
  TInventario(this.inventarioid, this.productoid, this.cantidadinicial, this.cantidadactual, this.fechaactualizacion, this.ubicacion, this.notas);

  //Funcion para capturar datos
  void capturardatos(){
    print("Ingrese el ID del inventario:");
    inventarioid = int.parse(stdin.readLineSync()!);
    print("Ingrese el ID del producto:");
    productoid = int.parse(stdin.readLineSync()!);
    print("Ingrese la cantidad inicial:");
    cantidadinicial = int.parse(stdin.readLineSync()!);
    print("Ingrese la cantidad actual:");
    cantidadactual = int.parse(stdin.readLineSync()!);
    fechaactualizacion = DateTime.now();
    print("Ingrese la ubicacion:");
    ubicacion = stdin.readLineSync()!;
    print("Ingrese las notas:");
    notas = stdin.readLineSync()!;
  }
}//Fin de la tabla inventario

//----------------------------------------------------------------------

//Pedido 1
class Pedido1 extends TDetallePedido {
  //Constructor
  Pedido1(int detalleid, int pedidoid, int productoid, int cantidad, double preciounitario, double subtotal, String notas) : super(detalleid, pedidoid, productoid, cantidad, preciounitario, subtotal, notas);

  //Funcion para mostrar datos
  void mostrardatos(){
    print("Detalle ID: $detalleid");
    print("Pedido ID: $pedidoid");
    print("Producto ID: $productoid");
    print("Cantidad: $cantidad");
    print("Precio unitario: $preciounitario");
    print("Subtotal: $subtotal");
    print("Notas: $notas");
  }
}//Fin de la clase pedido1

//Inventario 1
class Inventario1 extends TInventario {
  //Constructor
  Inventario1(int inventarioid, int productoid, int cantidadinicial, int cantidadactual, DateTime fechaactualizacion, String ubicacion, String notas) : super(inventarioid, productoid, cantidadinicial, cantidadactual, fechaactualizacion, ubicacion, notas);

  //Funcion para mostrar datos
  void mostrardatos(){
    print("Inventario ID: $inventarioid");
    print("Producto ID: $productoid");
    print("Cantidad inicial: $cantidadinicial");
    print("Cantidad actual: $cantidadactual");
    print("Fecha de actualizacion: $fechaactualizacion");
    print("Ubicacion: $ubicacion");
    print("Notas: $notas");
  }
}//Fin de la clase inventario1

//----------------------------------------------------------------------

void main() {
  print("Angel Tadeo De Leon Ceniceros Mat: 22308051281165 gpo 6-J");
  //Crear una instancia de Pedido1
  Pedido1 miPedido1 = Pedido1(0, 0, 0, 0, 0.0, 0.0, "");

  //Acceder a los atributos y funciones
  print("Ingresar datos de pedido:");
  miPedido1.capturardatos();
  print(" ");
  print("Datos del pedido:");
  miPedido1.mostrardatos();
  print(" ");
  print("---------------------------------");
  //Crear una instancia de Inventario1
  Inventario1 miInventario1 = Inventario1(0, 0, 0, 0, DateTime.now(), "", "");

  //Acceder a los atributos y funciones
  print("Ingresar datos de inventario:");
  miInventario1.capturardatos();
  print(" ");
  print("Datos del inventario:");
  miInventario1.mostrardatos();
}
