import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';

class CardContent extends StatefulWidget {
  final IconData icone;
  final String conteudo;
  CardContent({this.icone, this.conteudo});
  @override
  _CardContentState createState() => _CardContentState();
}

class _CardContentState extends State<CardContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          widget.icone,
          size: 84,
        ),
        Text(
          widget.conteudo,
          style: kLabelStyle,
        )
      ],
    );
  }
}
