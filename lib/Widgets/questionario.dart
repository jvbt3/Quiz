import 'package:flutter/material.dart';

import 'questao.dart';
import 'resposta.dart';

class Questionario extends StatelessWidget {
  final int perguntaSelecionada;
  final List<Map<String, Object>> perguntas;
  final void Function() responder;

  // ignore: prefer_const_constructors_in_immutables
  Questionario({super.key,
    required this.perguntaSelecionada,
    required this.perguntas,
    required this.responder});

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['resposta'] as List<Map<String, Object>>
        : [];
    return Column(
      children: [
        Questao(perguntas[perguntaSelecionada]['texto'] as String),
        ...respostas.map((resp) => Resposta(resp['texto'] as String, responder)).toList(),
      ],
    );
  }
}
