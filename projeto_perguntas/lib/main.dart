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
      'respostas': [
        {'texto': 'Preto', 'pontuacao': 10},
        {'texto': 'Vermelho', 'pontuacao': 5},
        {'texto': 'Verde', 'pontuacao': 3},
        {'texto': 'Branco', 'pontuacao': 1},
      ],
    },
    {
      'texto': 'Qual é a sua animal favorita ?',
      'respostas': [
        {'texto': 'Coelho', 'pontuacao': 10},
        {'texto': 'Cobra', 'pontuacao': 5},
        {'texto': 'Lagarto', 'pontuacao': 3},
        {'texto': 'Tigre', 'pontuacao': 1},
      ],
    },
    {
      'texto': 'Qual é a sua instrutor favorito ?',
      'respostas': [
        {
          'texto': 'Maria',
          'pontuacao': 10,
        },
        {'texto': 'Angelo', 'pontuacao': 5},
        {'texto': 'Carol', 'pontuacao': 3},
        {'texto': 'Betina', 'pontuacao': 1},
      ],
    },
  ];

  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(
        () {
          _perguntaSelecionada++;
          _pontuacaoTotal += pontuacao;
        },
      );
    }
  }

  void _reiniciarQuestionario(){
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
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
            : Resultado(_pontuacaoTotal,_reiniciarQuestionario),
      ),
    );
  }
}
