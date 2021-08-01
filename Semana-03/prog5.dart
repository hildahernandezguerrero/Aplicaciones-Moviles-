import 'dart:io';
List lista =[];
void main () {
print("Este es un programa que permitirá insertar y mostrar los datos de id_sensor, valor & fecha de registro almacenados en una lista de los Sensores.\n Utilizando Maps, clases, objetos & listas ....\n");

final objeto = new Sensores();
stdout.write("Ingresa el #numero de registros que desea insertar =>");
var registro = stdin.readLineSync();
var total  = int.parse(registro);
objeto.insertar(lista,total);
objeto.mostrar(lista);

}
class Sensores{
  void insertar(lista,total){
    int contador = 0;
    while (contador < total){ 

      stdout.write("Ingresa el id_sensor => ");
      String id = stdin.readLineSync();
      stdout.write("Ingresa el Valor =>  ");
      int value = int.parse(stdin.readLineSync());
      stdout.write("Ingresa la Fecha de registro =>  ");
      String date = stdin.readLineSync();

      Map <dynamic, dynamic> data = {
          "Id_sensor" :id,
          "Valor":value, 
          "Fecha_registro": date };

      print("\nSe insertaron los datos correctamente\n");
      lista.add(data);
      contador++;
      
    }
    }

  void mostrar(lista){
  
    print("\nLos datos que almacenaste son => \n" );
    print(lista);
    
   }
 
 }