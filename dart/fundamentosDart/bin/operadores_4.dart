

import 'dart:io';

main(){

  stdout.write('Está chovendo ? (s/N) ');
  final estaChovendo = stdin.readLineSync() == 's';



  stdout.write('Está frio ? (s/N) ');
  final estaFrio = stdin.readLineSync() == 's';

  String resultado  = estaChovendo || estaFrio ? 'Ficar em casa' : 'Sair !!!'; // ternário == possui três partes

  print(resultado);
  

 
 
}