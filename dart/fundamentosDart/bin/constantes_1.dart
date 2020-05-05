

import 'dart:io';

main(){
  //área da circuferência = PI * raio * raio
 final PI = 3.1415;
 // final == valores que não são alterados(constantes)
 stdout.write('digite o valor do raio: '); 
 // std == STANDART  OUT == SAÍDA
 String entradaDoUsuario = stdin.readLineSync(); 
 // STDIN == ENTRADA(EX: TECLADO,MOUSE,) 
 // readLineSync == espera entrada do usuário
 final raio = double.parse(entradaDoUsuario);
 // double.parse == converte string para double

 final area = PI * raio * raio;

  print('o valor do raio : ' + area.toString());
  // toString == converte doble para string

}