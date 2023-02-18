import 'package:flutter/material.dart';

class GuizButton extends StatelessWidget {
  const GuizButton({
    Key? key,
    required this.tuuraButtonBu,
    required this.baskanda,
  }) : super(key: key);
  final bool tuuraButtonBu;
  final void Function(bool) baskanda;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        onPressed: () => baskanda(tuuraButtonBu),
        style: ElevatedButton.styleFrom(
            backgroundColor: tuuraButtonBu ? Colors.green : Colors.red),
        child: Text(
          tuuraButtonBu ? 'Ooba' : 'Jok',
          style: const TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
