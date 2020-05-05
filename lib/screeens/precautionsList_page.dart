import 'package:bmicaliculatorapp/components/constants.dart';
import 'package:bmicaliculatorapp/utils/lists.dart';
import 'package:flutter/material.dart';

class PrecautionsListpage extends StatefulWidget {
  @override
  PrecautionsListpageState createState() {
    return new PrecautionsListpageState();
  }
}

class PrecautionsListpageState extends State<PrecautionsListpage> {
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
            color: Color.fromRGBO(40, 130, 70, 0.6),
              margin: EdgeInsets.only(left:15,right: 15,top: 15),

            child: ListTile(
              title: Text(
                underWeightprecaution[i].title,
                style: KDetailsTextStyle
              ),
              subtitle: Container(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  underWeightprecaution[i].text,
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
