/*
- List
- Map
- Set
*/

main(){

List aprovados = ['Ana','Carlos','Daniel','Rafael'];
// Aceita repetição
// aceita qualquer variável
print(aprovados is List);
print(aprovados);
print(aprovados.elementAt(2));
print(aprovados[3]);
print(aprovados.length);


 Map telefones = {
   'João' : '+55 (51) 993444895',
   'Carol': '+55 (51) 992285446',
   'Luana': '+55 (51) 992155446',
 };

  print(telefones is Map);
  print(telefones);
  print(telefones['joao']);
  print(telefones.length);
  print(telefones.keys);
  print(telefones.values);
  print(telefones.entries);


  Set times = {'vasco', 'falmengo', 'fortaleza', 'sao paulo'};
 // Não aceita repetição
  print(times is Set);
  times.add('Grêmio');
  print(times.length);
  print(times.contains('fortaleza'));
  print(times.first);
  print(times.last);

}