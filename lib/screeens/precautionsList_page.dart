import 'package:bmicaliculatorapp/components/Text_widgt.dart';
import 'package:bmicaliculatorapp/components/constants.dart';
import 'package:bmicaliculatorapp/setsize.dart';
import 'package:bmicaliculatorapp/utils/Models.dart';
import 'package:bmicaliculatorapp/utils/lists.dart';
import 'package:flutter/material.dart';

class PrecautionsListpage extends StatefulWidget {
  const PrecautionsListpage({@required this.status});
  final String status;
  @override
  PrecautionsListpageState createState() {
    return new PrecautionsListpageState(status: status);
  }
}

class PrecautionsListpageState extends State<PrecautionsListpage> {
  PrecautionsListpageState({@required this.status});
  final String status;
  List<Details> data = [];
  void getData() {
    if (status == "Underweight") {
      this.data = underWeightprecaution;
    } else {
      this.data = overWeightprecaution;
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: underWeightrisks.length,
      itemBuilder: (context, i) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Card(
            color: Colors.green[400],
            margin: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: ListTile(
              title: TextWidget(text: data[i].title, fontsize: SetSize().setFont(20), font: FontWeight.bold),
              subtitle: Container(
                padding: const EdgeInsets.only(top: 10.0),
                child: TextWidget(text: data[i].text, fontsize: SetSize().setFont(18), font: FontWeight.normal),
              ),
            ),
          )
        ],
      ),
    );
  }
}
