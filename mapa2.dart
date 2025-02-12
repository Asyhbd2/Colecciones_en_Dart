void main() {
  print("Angel Tadeo De Leon Ceniceros Mat: 22308051281165 gpo 6-J");
  print("Mapa TClientes");
  Map<String, dynamic> TClientes = {
    "ClienteID": 1,
    "Nombre": "Tadeo",
    "Correo": "Agripina@gmail.com",
    "Telefono": "123 456 7890",
    "Direccion": "Calle 123",
    "FechaRegistro": "2021-10-01",
    "Preferencias": "CheeseCake"
  };

  print("Iterar con forEach:");
  TClientes.forEach((key, value) {
    print("$key: $value");
  });
  print(" ");
  print("Iterar con for in:");
  for (var key in TClientes.keys) {
    print("$key: ${TClientes[key]}");
  }
  print(" ");

  print("Mapa TProductos");
  Map<String, dynamic> TProductos = {
    "ProductoID": 1,
    "Nombre": "CheeseCake",
    "Descripcion": "Pastel de queso sencillo",
    "Precio": 100.00,
    "Categoria": "CheeseCake",
    "Stock": 10,
    "FechaIngreso": "2021-10-01"
  };

  print("Iterar con forEach:");
  TProductos.forEach((key, value) {
    print("$key: $value");
  });
  print(" ");
  print("Iterar con for in:");
  for (var key in TProductos.keys) {
    print("$key: ${TProductos[key]}");
  }
}
