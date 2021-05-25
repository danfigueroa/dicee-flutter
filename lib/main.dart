import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green[800],
        appBar: AppBar(
          title: Text('Dicee by Daniel Figueroa'),
          backgroundColor: Colors.green[800],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

// função para rolar os dados simultâneamente com valores randômicos
  void diceRoll() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Centralizando os widgets com o Center
    return Center(
      // Widget para criar uma linha que conterá os futuros widgets
      child: Row(
        children: <Widget>[
          // Dado 1 feito com Expanded para adequar ao tamanho
          Expanded(
            child: TextButton(
              onPressed: () {
                diceRoll();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),

          // Dado 2
          Expanded(
            child: TextButton(
              onPressed: () {
                diceRoll();
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          )
        ],
      ),
    );
  }
}
