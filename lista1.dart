void main(){
    //Lista tipo enteros de 3 elementos
    List<int> numeros = [10,20,30];
    print("Lista de numeros enteros:");
    print(numeros);    
    print("Primer elemento de la lista: ${numeros[0]}");
    print("Segundo elemento de la lista: ${numeros[1]}");
    print("Tercer elemento de la lista: ${numeros[2]}");

    print("Lista de numeros enteros con ciclo for:");
    for (int i = 0; i<numeros.length; i++){
        print(numeros[i]);
    }
}