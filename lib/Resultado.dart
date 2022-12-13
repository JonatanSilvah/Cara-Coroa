import 'package:cara_coroa/HomePage.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'dart:math';

class ResultadoPage extends StatefulWidget {
  String valor;

  ResultadoPage(this.valor);
  @override
  State<ResultadoPage> createState() => _ResultadoPageState();
}

class _ResultadoPageState extends State<ResultadoPage> {
  List images = ["images/moeda_cara.png", "images/moeda_coroa.png"];
  @override
  Widget build(BuildContext context) {
    var caminhoImagem = "images/modea_cara.png";
    if (widget.valor == "cara") {
      caminhoImagem = "images/moeda_cara.png";
    } else {
      caminhoImagem = "images/moeda_coroa.png";
    }
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromARGB(255, 18, 140, 22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(caminhoImagem),
            Padding(
                padding: EdgeInsets.only(top: 32),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Image.asset("images/botao_voltar.png"),
                ))
          ],
        ),
      ),
    );
  }
}
