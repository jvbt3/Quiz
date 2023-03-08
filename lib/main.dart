import 'package:flutter/material.dart';
import './Widgets/resultado.dart';
import './Widgets/questionario.dart';

void main() {
  runApp(const MyApp());
}

class _MyAppState extends State<MyApp> {
  var _perguntaSelecionada = 0;
  final _perguntas = const [
    {
      'texto': 'Qual carro tem mais cavalaria (stock)?',
      'resposta': [
        {'texto': 'CHEVROLET Camaro', 'pontos': 1},
        {'texto': 'PORSCHE Cayenne', 'pontos': 2},
        {'texto': 'BMW M3', 'pontos': 3},
        {'texto': 'AUDI R8', 'pontos': 4},
        {'texto': 'LAMBORGHINI Urus', 'pontos': 5},
      ],
    },
    {
      'texto': 'Qual a cavalaria de uma lamborghini Urus 2023?',
      'resposta': [
        {'texto': '340cv', 'pontos': 1},
        {'texto': '650cv ', 'pontos': 5},
        {'texto': '560cv', 'pontos': 4},
        {'texto': '780cv', 'pontos': 3},
        {'texto': '450cv', 'pontos': 2},
      ],
    },
    {
      'texto':
          'Qual o 0 a 100km/h de um Mercedez AMG One com cerca de 1.069cv?',
      'resposta': [
        {'texto': '3,6s', 'pontos': 1},
        {'texto': '2,3s', 'pontos': 2},
        {'texto': '3,2s', 'pontos': 3},
        {'texto': '3,0s', 'pontos': 4},
        {'texto': '2,9s', 'pontos': 5},
      ],
    },
  ];

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Perguntados"),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntaSelecionada: _perguntaSelecionada,
                perguntas: _perguntas,
                responder: _responder)
            : Resultado(),
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
