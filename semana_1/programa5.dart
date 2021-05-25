//Calcular la edad de un perro en años humanos, si se estima que un año perro equivale a 7 años humanos.
//
void main(){
   double resultado = edad(14);
   print("La edad del perro es: $resultado años");
}

double edad(int anio_perro){
    return (anio_perro * .1);
}
