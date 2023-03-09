import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String resposta;

  final void Function() onSelection;

  const Resposta(this.resposta, this.onSelection, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      
        
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
          ),
          onPressed: onSelection,
          child: Text(resposta),
        ),
      
    );
  }
}
