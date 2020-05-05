import 'package:bmicaliculatorapp/components/constants.dart';
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
          child : Text(title,style: kLargeButtonTextStyle,),
        ),
        padding: EdgeInsets.all(5),
        // margin: EdgeInsets.only(bottom: 10.0),
        width: double.infinity,
        height: MediaQuery.of(context).size.height/11,
        color: btnColor,
      ),
    );
  }
}