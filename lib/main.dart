import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(const MyApp());
}

class _MyAppState extends State<MyApp> {
  var _perguntaSelecionada = 0;

  void _resposta() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      {
        'texto': 'Quais desses carros voce teria?',
        'resposta': [
          'Cayenne',
          'M3',
          'R8',
          'Urus',
        ],
      },
      {
        'texto': 'Qual a cavalaria de uma lamborghini Urus 2023?',
        'resposta': [
          '666cv',
          '498cv',
          '573cv',
          '657cv',
        ],
      },
      {
        'texto': 'Qual carro melhor?',
        'resposta': [
          'Urus',
          'McDonalds',
          'Cervejinha',
          'Dodge RAM',
        ],
      },
    ];

    List<Widget> ?resposta = [];

    // ignore: unused_local_variable
    for (String textoResp
        in perguntas[_perguntaSelecionada]['resposta'] as List) {
      resposta.add(Answer(textoResp, _resposta));
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntados'),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
            ...resposta,
          ],
        ),
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
