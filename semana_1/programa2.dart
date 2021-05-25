//Calcular el perimetro de un hexagono
//Para obtener el Perimetro del Hexagonose realiza la operacion =n.lados * lado

void main(){
   int resultado = perimetro(6,5);
   print("El perimetro del Hexagono es: $resultado");
}

int perimetro(int n_lados, int lado){
    return (n_lados * lado);
}
