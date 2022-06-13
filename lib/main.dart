import 'package:flutter/material.dart';
import 'Resultado.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomeStateful()));
}

class HomeStateful extends StatefulWidget {
  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {
  void _exibirResultado() {
    var moeda = ['cara', 'coroa'];
    var randomNumber = Random().nextInt(moeda.length);
    var resultado = moeda[randomNumber];

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Resultado(resultado)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff61bd86),
        body: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(30),
              child: Image.asset('images/logo.png'),
            ),
            GestureDetector(
                onTap: _exibirResultado,
                child: Image.asset('images/botao_jogar.png'))
          ],
        )));
  }
}
