import 'package:bmicaliculatorapp/components/constants.dart';
import 'package:bmicaliculatorapp/setsize.dart';
import 'package:flutter/material.dart';
import 'Text_widgt.dart';


class IconContent extends StatelessWidget {
  IconContent({@required this.icon,@required this.name});
  final IconData  icon;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: <Widget>[
        Icon(icon,
          size: MediaQuery.of(context).size.height/9,),
        SizedBox(
          height: 10.0,
        ),
        // Text(name,style: KLabelTextStyle
        // ),
        TextWidget(text: name, fontsize: SetSize().setFont(18), font: FontWeight.w500,color: Colors.grey,)
      ],
    );
  }
}
