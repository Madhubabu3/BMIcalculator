import 'package:flutter/material.dart';

class RoundIcon extends StatelessWidget {
  RoundIcon({this.onPressed, this.icon});
  final Function onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        width: 60,
        height: 60,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
