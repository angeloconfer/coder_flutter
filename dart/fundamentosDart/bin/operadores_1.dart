
main(){


  // Aritméticos ( binário/infix )

  int a = 7;
  int b = 3;
  int resultado = a + b;

  print(resultado);
  print(a - b); 
  print(a * b);
  print(a / b);
  print(a % b); // resto
  print(34 % 3);

  // Operador lógico

  bool ehFragil = true;
  bool ehCaro = false;

  print(ehFragil && ehCaro); // operação lógica E - AND
  print(ehFragil || ehCaro); // operação lógica OU - OR
  print(ehFragil ^ ehCaro); // OU exclusivo - XOR
  print(!ehFragil); // NOT => Unário/Prefix
  print(!!ehCaro);


}