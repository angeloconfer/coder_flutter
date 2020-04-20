import 'package:flutter/material.dart';
import 'package:projeto_perguntas/resposta.dart';
import 'questao.dart';

void main() => runApp(PerguntaApp());

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
      print(_perguntaSelecionada);
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
      {
        'texto' : 'Qual é a sua cor favorita ?',
        'respostas' : ['Preto', 'Vermelho', 'Verde', 'Branco'],
      },
      {
        'texto' : 'Qual é a sua animal favorita ?',
        'respostas' : ['Coelho', 'Cobra', 'Verde', 'Branco'],
      },
      {
        'texto' : 'Qual é a sua instrutor favorito ?',
        'respostas' : ['Maria', 'Angelo', 'Carol', 'Betina'],
      },

    ];

    // ABORDAGEM DECLARATIVA
    List<String> respostas = perguntas[_perguntaSelecionada]['respostas'];
  
    // ABORTAGEM IMPERATIVA
    // for(var textoResp in respostas) {
    //   widgets.add(Resposta(textoResp, _responder));
    // }

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]['texto']),
            ...respostas.map((t) => Resposta(t, _responder)).toList(),
          ],
        ),
      ),
    );
  }
}
