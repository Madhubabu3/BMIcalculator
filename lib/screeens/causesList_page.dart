import 'package:bmicaliculatorapp/components/constants.dart';
import 'package:bmicaliculatorapp/utils/lists.dart';
import 'package:flutter/material.dart';

class CausesListpage extends StatefulWidget {
  @override
  PrecautionsListpageState createState() {
    return new PrecautionsListpageState();
  }
}

class PrecautionsListpageState extends State<CausesListpage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: underWeightrisks.length,
      itemBuilder: (context, i) => Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Divider(
          //   height: 10.0,
          //   width:
          // ),
          Card(
            color: Color.fromRGBO(40, 40, 130, 0.7),
              margin: EdgeInsets.only(left:15,right: 15,top: 15),

            child: ListTile(
              title: Text(
                underWeightcauses[i].title,
                style: KDetailsTextStyle
              ),
              subtitle: Container(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  underWeightcauses[i].text,
                  style: KListTextstyle
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
