# Aplicaciones-Moviles-
Desarrollo de Aplicaciones Móviles. 

import 'dart:io';

void main(){
  var repetir="si";
  while (repetir=="si"){
    stdout.writeln("***********\nMenú\n***********Elige una opcion con numeros:");
    var opcion = stdin.readLineSync();

    \n1:Mostrar todos los datos.\n1
    if (opcion =="1"){
      personas();
    }
    \n2:Insertar un nuevo registro.\n2
    if (opcion =="2"){
      personas();
    }
    \n3:Modificar un registro.\n3
    if (opcion =="3"){
      personas();
    }
    \n4:Borrar un registro.\n4
    if (opcion =="4"){
      personas();
    }
    stdout.writeln("¿Deseá regresar al menú?");
    repetir = stdin.readLineSync();
  }
}

void personas(){
  stdout.writeln("\nIngresa el nombre de la persona \n");
  var nombre = stdin.readLineSync();
  stdout.writeln
  
  ("\nIngresa el numero telefonico \n");
   var telefono = stdin.readLineSync();
  stdout.writeln

  ("\nIngresa el correo electronico de la persona \n");
   var email= stdin.readLineSync();

  var agenda = Map();
  agenda ['Nombre'] = nombre;
  agenda ['Telefono'] = telefono;
  agenda ['Correo '] = email;

  print ("los nombres son $agenda");
}


//*MAPS EN DART*//
import 'dart:io';

List dateguardar = [];

void main(){
  var repeat="si";
  while (repeat=="si"){

    print("Bienvenido(@) al programa ");
    print("  En este menú elije la opción que deseas realizar ");

    stdout.writeln("     
       -Opción a:Mostrar todos los datos.-        -Opción b:Insertar un nuevo registro-.      -Opción c:Modificar un registro.-         -Opción d:Borrar un registro.-  
     ELIJA LA OPCIÓN QUE DESEA REALIZAR:");


    var opc = stdin.readLineSync();

    if (opc =="a"){  
      mostrar();
    }
    if (opc =="b"){   
      insertar();
    }
    if (opc =="c"){   
      modificar();
    }
    if (opc =="d"){   
      eliminar();
    }
    print("Para otro cambio regresar a el menú ");
    repeat = stdin.readLineSync();
  }
}

void mostrar(){
  print(dateguardar);
}

void insertar(){
  print(" Número de personas a ingresar ");
  var nveces = stdin.readLineSync();
  int numveces1 = int.parse(nveces);
  int conta = 0;

  for (var m = 0; m < numveces1; m++){    // 
    conta=conta+1;
    stdout.writeln(" Ingrese  nombre de la persona $conta");

    var nom = stdin.readLineSync();
    stdout.writeln("Ingrese numero telefónico ");

    var tel = stdin.readLineSync();
    stdout.writeln("Ingrese email de la person");
    var email= stdin.readLineSync();

    Map <dynamic, dynamic> agenda = {
      'Nombre' : nom,
      'Telefono' : tel,
      'Correo' : email
    };
    print(" Los Datos estan Guardados ");
    dateguardar.add(agenda);
  }

}
void modificar(){
  mostrar();
  stdout.writeln("Ingrese el nombre completo de la persona para modificarse ");
  var change = stdin.readLineSync();  
  for(int m=0; m < dateguardar.length; m++){
      var modif = new Map();
      modif = dateguardar[m];

    if (change ==modif['Nombre']){    
      stdout.writeln("Ingrese nombre completo");
      var nomCambio = stdin.readLineSync();

      stdout.writeln("Ingrese numero Telefonico ");
      var telCambio = stdin.readLineSync();

      stdout.writeln("Ingrese el correo electronico");
      var emailCambio = stdin.readLineSync();

      modif["Nombre"]=nomCambio;
      modif["Telefono"]=telCambio;
      modif["Correo"]=emailCambio;
      dateguardar[m]=modif;
      print("El nombre completo de la persona $change han sido actualizado");
      print(dateguardar);
    }

  }
}
void eliminar(){
  mostrar();
  print("Ingrese el nombre completo de la persona para eliminar");
  var nompersona = stdin.readLineSync();      
  for (int m=0; m < dateguardar.length; m++){
    var elim = new Map();    
    elim = dateguardar[m];

    if (nompersona == elim['Nombre']){
    dateguardar.removeAt(m);
    print("El nombre completo $nompersona ha sido eliminado ");
    print (dateguardar);
    }

  } 

}