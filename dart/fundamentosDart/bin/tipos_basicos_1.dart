/*
- Números ( int e double)
- String (String)
- Booleanos (boll)
- dynamic

*/

main(){

  int n1 = 3;
  double n2 = (-5.67).abs();
  // abs == absoluto, converte para valor possitivo
  double n3 = double.parse('12.765');
  // .parse == converte String para double
  num n4 = 6;

  print(n1 + n2 + n3);


  String s1 = 'bom ';
  String s2 = 'dia';

  print(s1 + s2.toUpperCase() + '!!!!');

  bool estaChovendo = true;
  bool muitoFrio = false;
  print(estaChovendo && muitoFrio);

  dynamic x = 'Um texto bem legal';
  print(x);
  // dynamic == recebe variáveis de todos os tipos, String, int, bool
  x= 123;
  print(x);


}