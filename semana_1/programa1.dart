//Calcular el area de un Triangulo
//Se calcula realizando la formula  A=(base * altura/2)

void main(){
   double resultado = area(7,13);
   print("El area del Triangulo es: $resultado");
}

double area(int base, int altura){
    return (base * altura/2);
}
