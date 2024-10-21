import 'package:flutter/material.dart';
import 'dart:math';

final randomizador = Random();

class RoladorDeDados extends StatefulWidget {
  const RoladorDeDados({super.key});
  @override
  State<RoladorDeDados> createState() {
    return _RoladorDeDadosstate();
  }
}

class _RoladorDeDadosstate extends State<RoladorDeDados> {
  var dadoAtivo = 1;

  void rolarDado() {
    dadoAtivo = Random().nextInt(6) + 1;
    setState(() {});
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset("assets/image/dado$dadoAtivo.png", width: 200),
        const SizedBox(height: 80),
        ElevatedButton(
          onPressed: rolarDado,
          child: const Text(
              style: TextStyle(
                color: Colors.amber,
                fontSize: 28,
              ),
              "me rola"),
        )
      ],
    );
  }
}
