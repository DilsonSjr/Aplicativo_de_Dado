import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 24, 66, 45),
          Color.fromARGB(255, 17, 107, 92),
        ),
      ),
    ),
  );
}