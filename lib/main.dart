import 'package:calculadoraIMC/inputPage.dart';
import 'package:flutter/material.dart';
import 'resultado.dart';

void main() {
  runApp(CalculadoraIMC());
}

class CalculadoraIMC extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        textTheme: Typography.whiteHelsinki,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(title: 'Calculadora de IMC'),
      },
    );
  }
}
