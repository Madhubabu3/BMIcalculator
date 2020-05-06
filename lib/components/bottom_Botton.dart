import 'package:bmicaliculatorapp/components/Text_widgt.dart';
import 'package:bmicaliculatorapp/setsize.dart';
import 'package:flutter/material.dart';


class BottomButton extends StatelessWidget {
  BottomButton({@required this.title, @required this.onpress, this.btnColor});
  final Function onpress;
  final String title;
  final Color btnColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
        child: Container(
        child: Center(
          child : TextWidget(text: title, fontsize: SetSize().setFont(25), font: FontWeight.bold),
        ),
        padding: EdgeInsets.only(bottom:5),
        // margin: EdgeInsets.only(bottom: 10.0),
        width: double.infinity,
        height: MediaQuery.of(context).size.height/11,
        color: btnColor,
      ),
    );
  }
}