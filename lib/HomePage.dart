import 'dart:math';

import 'package:cara_coroa/Resultado.dart';
import 'package:flutter/material.dart';
import 'Resultado.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _exibirResultado() {
    var itens = ["cara", "coroa"];
    var numero = Random().nextInt(itens.length);
    var resultado = itens[numero];

    Navigator.push(context,
        MaterialPageRoute(builder: (context) => ResultadoPage(resultado)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromARGB(255, 18, 140, 22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("images/logo.png"),
            Padding(
                padding: EdgeInsets.only(top: 32),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _exibirResultado();
                    });
                  },
                  child: Image.asset("images/botao_jogar.png"),
                ))
          ],
        ),
      ),
    );
  }
}
