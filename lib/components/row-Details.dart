import 'package:bmicaliculatorapp/components/constants.dart';
import 'package:flutter/material.dart';


class RowDetails extends StatelessWidget {
  RowDetails({@required this.leftText,@required this.rightText});
  final String leftText;
  final String rightText;

  @override
  Widget build(BuildContext context) {
    return Row(
           mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.baseline,
         textBaseline: TextBaseline.alphabetic,
      children: <Widget>[
       Expanded(child: Text(leftText,style: KDetailsTextStyle,),),
       SizedBox(width:20),
       Text(':',style: KBtnTextStyle,),
       SizedBox(width:20),
       Expanded(child: Text(rightText,style: KDetailsTextStyle,),),

      ],
    );
  }
}