import 'package:bmicaliculatorapp/components/Text_widgt.dart';
import 'package:bmicaliculatorapp/components/constants.dart';
import 'package:bmicaliculatorapp/setsize.dart';
import 'package:bmicaliculatorapp/utils/lists.dart';
import 'package:flutter/material.dart';

class NormalPrecautions extends StatefulWidget {
  @override
  NormalPrecautionsState createState() {
    return new NormalPrecautionsState();
  }
}

class NormalPrecautionsState extends State<NormalPrecautions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextWidget(
            text: "Normal Details",
            fontsize: SetSize().setFont(22),
            font: FontWeight.w500),
      ),
      body: ListView.builder(
        itemCount: underWeightrisks.length,
        itemBuilder: (context, i) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              color: Color.fromRGBO(40, 130, 70, 0.6),
              margin: EdgeInsets.only(left: 15, right: 15, top: 15),
              child: ListTile(
                title: Text(underWeightprecaution[i].title,
                    style: KDetailsTextStyle),
                subtitle: Container(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(underWeightprecaution[i].text,
                      style: KListTextstyle),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
