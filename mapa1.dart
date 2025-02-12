void main() {
  print("Angel Tadeo De Leon Ceniceros Mat: 22308051281165 gpo 6-J");
  Map<int, String> alumnos = {1: "Juan", 2: "Pedro", 3: "Luis"};
  print("Mapa de alumnos:");
  print(alumnos);

  print("Iterar un mapa con ciclo forEach:");
  alumnos.forEach((key, value) {
    print("$key, $value");
  });

  print("Iterar un map con for in:");
  for (var key in alumnos.keys) {
    print("${alumnos[key]}");
  }
}
