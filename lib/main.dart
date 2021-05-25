import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green[800],
        appBar: AppBar(
          title: Text('Dicee by Daniel Figueroa'),
          backgroundColor: Colors.green,
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
  @override
  Widget build(BuildContext context) {
    int leftDiceNumber = 6;

    // Centralizando os widgets com o Center
    return Center(
      // Widget para criar uma linha que conterá os futuros widgets
      child: Row(
        children: <Widget>[
          // Dado 1 feito com Expanded para adequar ao tamanho
          Expanded(
            child: TextButton(
              onPressed: () {
                print('Dado 1 foi clicado');
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),

          // Dado 2
          Expanded(
            child: TextButton(
              onPressed: () {
                print('Dado 1 foi clicado');
              },
              child: Image.asset('images/dice2.png'),
            ),
          )
        ],
      ),
    );
  }
}
