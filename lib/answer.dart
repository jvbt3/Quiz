import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;

  final void Function() onSelection;

  const Answer(this.answer, this.onSelection, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10,0,10,0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
          ),
          onPressed: onSelection,
          child: Text(answer),
        ),
      ),
    );
  }
}
