import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  @required
  Function ontap;
  final Icon icone;
  RoundIconButton({this.ontap, this.icone});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: icone,
      elevation: 8,
      onPressed: ontap,
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
    );
  }
}
