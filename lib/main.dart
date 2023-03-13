import 'package:flutter/material.dart';
import './Widgets/resultado.dart';
import './Widgets/questionario.dart';

void main() {
  runApp(const MyApp());
}

class _MyAppState extends State<MyApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final _perguntas = const [
    {
      'texto': 'Qual carro tem mais cavalaria (stock)?',
      'resposta': [
        {'texto': 'CHEVROLET Camaro', 'pontuacao': 1},
        {'texto': 'PORSCHE Cayenne', 'pontuacao': 2},
        {'texto': 'BMW M3', 'pontuacao': 3},
        {'texto': 'AUDI R8', 'pontuacao': 4},
        {'texto': 'LAMBORGHINI Urus', 'pontuacao': 5},
      ],
    },
    {
      'texto': 'Qual a cavalaria de uma lamborghini Urus 2023?',
      'resposta': [
        {'texto': '340cv', 'pontuacao': 1},
        {'texto': '650cv ', 'pontuacao': 5},
        {'texto': '560cv', 'pontuacao': 4},
        {'texto': '780cv', 'pontuacao': 3},
        {'texto': '450cv', 'pontuacao': 2},
      ],
    },
    {
      'texto':
          'Qual o 0 a 100km/h de um Mercedez AMG One com cerca de 1.069cv?',
      'resposta': [
        {'texto': '3,6s', 'pontuacao': 1},
        {'texto': '2,3s', 'pontuacao': 2},
        {'texto': '3,2s', 'pontuacao': 3},
        {'texto': '3,0s', 'pontuacao': 4},
        {'texto': '2,9s', 'pontuacao': 5},
      ],
    },
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  void _reiniciarQuiz() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          title: const Text("Perguntados"),
          
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntaSelecionada: _perguntaSelecionada,
                perguntas: _perguntas,
                responder: _responder)
            : Resultado(_pontuacaoTotal, _reiniciarQuiz),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() {
    return _MyAppState();
  }
}
