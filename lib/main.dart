import 'package:flutter/material.dart';
import 'questao.dart';
import 'resposta.dart';

void main() {
  runApp(const MyApp());
}

class _MyAppState extends State<MyApp> {
  var _perguntaSelecionada = 0;
  final _perguntas = const [
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

  void _responder(){
    if(temPerguntaSelecionada){
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
    List<String> respostas = temPerguntaSelecionada ? _perguntas[_perguntaSelecionada]['resposta'] as List<String> : [];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Perguntados"),
        ),
        body: temPerguntaSelecionada 
          ? Column(
            children: [
                  Questao(_perguntas[_perguntaSelecionada]['texto'] as String),
                  ...respostas.map((t) => Resposta(t, _responder)).toList(),
                ],
              )
            : const Center(
              child: Text("So tenho 2 coisas pra dizer, PARA-BENS",
                style: TextStyle(fontSize: 20),),
              ),
      ),
    );
  }
}

  class MyApp extends StatefulWidget {
    const MyApp({super.key});
  
    @override
    // ignore: library_private_types_in_public_api
    _MyAppState createState(){
      return _MyAppState();
    }
    
  } 


      


    
