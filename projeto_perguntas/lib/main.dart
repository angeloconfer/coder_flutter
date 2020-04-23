import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
import 'resultado.dart';

void main() => runApp(PerguntaApp());

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  
  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita ?',
      'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco'],
    },
    {
      'texto': 'Qual é a sua animal favorita ?',
      'respostas': ['Coelho', 'Cobra', 'Lagarto', 'Tigre'],
    },
    {
      'texto': 'Qual é a sua instrutor favorito ?',
      'respostas': ['Maria', 'Angelo', 'Carol', 'Betina'],
    },
   ];
   
   var _perguntaSelecionada = 0;

   bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
   }
   
   void _responder() {
    if (temPerguntaSelecionada) {
      setState(
        () {
          _perguntaSelecionada++;
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
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
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder,
              )
            : Resultado(),
      ),
    );
  }
}
