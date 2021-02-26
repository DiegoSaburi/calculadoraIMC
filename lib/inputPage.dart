import 'package:calculadoraIMC/classes/cardcontent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './classes/containerRetangular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'enums.dart';
import 'constants.dart';

var generoSelecionado;
var altura = 175.0;

class InputPage extends StatefulWidget {
  InputPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  var cardMasculino = kInactiveCard;
  var cardFeminino = kInactiveCard;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ContainerRetangular(
                      onPressed: () {
                        setState(() {
                          generoSelecionado = Sexo.masculino;
                        });
                      },
                      color: generoSelecionado == Sexo.masculino
                          ? kActiveCard
                          : kInactiveCard,
                      child: CardContent(
                        icone: FontAwesomeIcons.mars,
                        conteudo: "MASCULINO",
                      )),
                ),
                Expanded(
                  child: ContainerRetangular(
                    onPressed: () {
                      setState(() {
                        generoSelecionado = Sexo.feminino;
                      });
                    },
                    color: generoSelecionado == Sexo.feminino
                        ? kActiveCard
                        : kInactiveCard,
                    child: CardContent(
                      icone: FontAwesomeIcons.venus,
                      conteudo: "FEMININO",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ContainerRetangular(
              color: kActiveCard,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "ALTURA",
                    style: kLabelStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        altura.toInt().toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                          fontSize: 48,
                        ),
                      ),
                      Text(
                        "cm",
                        style: kLabelStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8D8E98),
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 16),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 32),
                    ),
                    child: Slider(
                      value: altura,
                      min: 120.0,
                      max: 230.0,
                      divisions: 110,
                      onChanged: (double novaAltura) {
                        setState(() {
                          altura = novaAltura;
                          print(novaAltura);
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ContainerRetangular(
                    color: kActiveCard,
                    child: Column(
                      children: [],
                    ),
                  ),
                ),
                Expanded(
                  child: ContainerRetangular(
                    color: kActiveCard,
                    child: Column(
                      children: [],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top: 8),
            width: double.infinity,
            height: 64,
          )
        ],
      ),
    );
  }
}
