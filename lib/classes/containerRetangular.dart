import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ContainerRetangular extends StatefulWidget {
  final Widget child;
  final Color color;
  final Function onPressed;
  ContainerRetangular({this.child, this.color, this.onPressed});
  @override
  _ContainerRetangularState createState() => _ContainerRetangularState();
}

class _ContainerRetangularState extends State<ContainerRetangular> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        margin: EdgeInsets.all(8.0),
        child: widget.child,
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
