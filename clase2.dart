//Tabla Tclientes
class TClientes {
  int clienteID;
  String nombre;
  String correo;
  String telefono;
  String direccion;
  DateTime fechaRegistro;
  String preferencias;
  //Constructor
  TClientes(this.clienteID, this.nombre, this.correo, this.telefono, this.direccion, this.fechaRegistro, this.preferencias);

  void capturardatos(int id, String nombre, String correo, String telefono, String direccion, DateTime fechaRegistro, String preferencias){
    this.clienteID = id;
    this.nombre = nombre;
    this.correo = correo;
    this.telefono = telefono;
    this.direccion = direccion;
    this.fechaRegistro = fechaRegistro;
    this.preferencias = preferencias;
  }//Funcion para capturar datos

  void mostrardatos(){
    print("ID: $clienteID");
    print("Nombre: $nombre");
    print("Correo: $correo");
    print("Telefono: $telefono");
    print("Direccion: $direccion");
    print("Fecha de Registro: $fechaRegistro");
    print("Preferencias: $preferencias");
  }//Funcion para mostrar datos
}//Clase TClientes

//-----------------------------------------------------------------------------------------------

//Tabla TProductos
class TProductos {
  int productoID;
  String nombre;
  String descripcion;
  double precio;
  String categoria;
  int stock;
  DateTime fechaingreso;
  //Constructor
  TProductos(this.productoID, this.nombre, this.descripcion, this.precio, this.categoria, this.stock, this.fechaingreso);

  void capturardatos(int id, String nombre, String descripcion, double precio, String categoria, int stock, DateTime fechaingreso){
    this.productoID = id;
    this.nombre = nombre;
    this.descripcion = descripcion;
    this.precio = precio;
    this.categoria = categoria;
    this.stock = stock;
    this.fechaingreso = fechaingreso;
  }//Funcion para capturar datos  

  void mostrardatos(){
    print("ID: $productoID");
    print("Nombre: $nombre");
    print("Descripcion: $descripcion");
    print("Precio: $precio");
    print("Categoria: $categoria");
    print("Stock: $stock");
    print("Fecha de Ingreso: $fechaingreso");
  }//Funcion para mostrar datos
}

//-----------------------------------------------------------------------------------------------

//Tabla TPedidos
class TPedidos {
  int pedidoID;
  int clienteID;
  DateTime fechapedido;
  double total;
  String estado;
  String formapago;
  DateTime fechaentrega;
  //Constructor

  TPedidos(this.pedidoID, this.clienteID, this.fechapedido, this.total, this.estado, this.formapago, this.fechaentrega);

  void capturardatos(int id, int clienteID, DateTime fechapedido, double total, String estado, String formapago, DateTime fechaentrega){
    this.pedidoID = id;
    this.clienteID = clienteID;
    this.fechapedido = fechapedido;
    this.total = total;
    this.estado = estado;
    this.formapago = formapago;
    this.fechaentrega = fechaentrega;
  }//Funcion para capturar datos

  void mostrardatos(){
    print("ID: $pedidoID");
    print("ID Cliente: $clienteID");
    print("Fecha de Pedido: $fechapedido");
    print("Total: $total");
    print("Estado: $estado");
    print("Forma de Pago: $formapago");
    print("Fecha de Entrega: $fechaentrega");
  }//Funcion para mostrar datos
}

//-----------------------------------------------------------------------------------------------

void main(){
  print("Angel Tadeo De Leon Ceniceros Mat: 22308051281165 gpo 6-J");

  print("-------------------------------------------------");
  print("Tabla TClientes:");
  //Crear un objeto de la clase TClientes
  var cliente1 = TClientes(0,"","","","",DateTime.now(),"");
  //Capturar datos del cliente
  cliente1.capturardatos(1, "Angel De Leon","Agripina@gmail.com","123 4567 8901","Calle 123",DateTime.now(),"CheeseCake");
  //Mostrar datos del cliente
  cliente1.mostrardatos();

  print("-------------------------------------------------");

  //Crear un objeto de la clase TProductos
  print("Tabla TProductos:");
  var producto1 = TProductos(0,"","",0.0,"",0,DateTime.now());
  //Capturar datos del producto
  producto1.capturardatos(1, "CheeseCake","Pastel de queso",150.0,"Postres",10,DateTime.now());
  //Mostrar datos del producto
  producto1.mostrardatos();

  print("-------------------------------------------------");
    //Crear un objeto de la clase TPedidos
  print("Tabla TPedidos:");
  var pedido1 = TPedidos(0,0,DateTime.now(),0.0,"","",DateTime.now());
  //Capturar datos del pedido
  pedido1.capturardatos(1, 1, DateTime.now(), 150.0, "Enviado", "Efectivo", DateTime.now());
  //Mostrar datos del pedido
  pedido1.mostrardatos();
}