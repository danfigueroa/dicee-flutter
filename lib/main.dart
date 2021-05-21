import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.green,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

      var leftDiceNumber = 6;

    // Centralizando os widgets com o Center
    return Center(
      // Widget para criar uma linha que conterá os futuros widgets
      child: Row(
        children: <Widget>[
          // Dado 1 feito com Expanded para adequar ao tamanho
          Expanded(
            child: FlatButton(
              onPressed: (){
                print('Dado 1 foi clicado');
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),

            // Dado 2
            Expanded(
              child: FlatButton(
                child: Image.asset('images/dice2.png'),
              ),
            )
        ],
      ),
    );
  }
}

