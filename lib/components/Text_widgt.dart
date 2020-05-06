import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  TextWidget({@required this.text, @required this.fontsize,this.color,@required this.font,this.textAlign});
  final String text;
  final num fontsize;
  final Color color;
  final FontWeight font;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,textAlign: textAlign,
      style: TextStyle(
        fontFamily: "Roboto",
        fontSize: fontsize,
        fontWeight: font,
        color: color,
        
      ),
    );
  }
}
