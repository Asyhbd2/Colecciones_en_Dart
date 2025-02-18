// Definición de la clase Animal
class Animal {
  // Atributos
  String nombre;
  String raza;

  // Constructor
  Animal(this.nombre, this.raza);

  // Método comer
  void comer() {
    print('$nombre está comiendo.');
  }
}
//----------------------------------------------------------------------
// Definición de la clase Perro que hereda de Animal
class Perro extends Animal {
  // Constructor
  Perro(String nombre, String raza) : super(nombre, raza);

  // Método ladrar
  void ladra() {
    print('$nombre: Guau, guau.');
  }

  // Método correr
  void corre() {
    print('$nombre está corriendo.');
  }
}
//----------------------------------------------------------------------
void main() {
      print("Angel Tadeo De Leon Ceniceros Mat: 22308051281165 gpo 6-J");
  // Crear una instancia de Perro
  Perro miPerro = Perro('Winona', 'Border Collie');

//Accede a los atributos y funciones base
print("Nombre: ${miPerro.nombre}");
print("Raza: ${miPerro.raza}");

  // Llamar a los métodos
  miPerro.comer();  // Heredado de Animal
  miPerro.ladra();  // Método de Perro
  miPerro.corre();  // Método de Perro
}