import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciarQuiz;

  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  Resultado(this.pontuacao, this.reiniciarQuiz);

  String get fraseResultado {
    if (pontuacao < 4 && pontuacao > 1) {
      return 'carai bixo, precisa de ajuda?';
    } else if (pontuacao < 5) {
      return 'ai sim fera, quer um biscoito?';
    } else if (pontuacao < 8) {
      return 'AAAAAAAAA QUEM E MEU ENTENDEDOR DE CARRO HEIN???? :3';
    } else if (pontuacao == 13) {
      return 'votou no lula foi?';
    } else {
      return 'Horacio Pagani, e vc?';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
