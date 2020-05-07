import 'package:bmicaliculatorapp/components/Constants.dart';
import 'package:bmicaliculatorapp/components/Text_widgt.dart';
import 'package:bmicaliculatorapp/setsize.dart';
import 'package:flutter/material.dart';

class RoundRisedButton extends StatelessWidget {
  RoundRisedButton({@required this.title, @required this.onpress,@required this.color});

  final String title;
  final Function onpress;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        textColor: Colors.white,
        color: color,
        child: TextWidget(
            text: title,
            fontsize: SetSize().setFont(25),
            font: FontWeight.w500),
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0),
        ),
        onPressed: onpress);
  }
}