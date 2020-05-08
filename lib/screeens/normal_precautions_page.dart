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
              color: Colors.green[400],
              margin: EdgeInsets.only(left: 15, right: 15, top: 15),
              child: ListTile(
                title: TextWidget(text: normalWeightprecaution[i].title, fontsize: SetSize().setFont(20), font: FontWeight.bold),
                subtitle: Container(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: TextWidget(text: normalWeightprecaution[i].text, fontsize: SetSize().setFont(18), font: FontWeight.normal),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
