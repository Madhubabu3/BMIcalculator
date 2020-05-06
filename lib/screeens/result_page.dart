import 'package:bmicaliculatorapp/components/Text_widgt.dart';
import 'package:bmicaliculatorapp/components/bottom_Botton.dart';
import 'package:bmicaliculatorapp/components/constants.dart';
import 'package:bmicaliculatorapp/screeens/details_page.dart';
import 'package:bmicaliculatorapp/setsize.dart';
import 'package:bmicaliculatorapp/utils/Models.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final PersonDetails obj;
  ResultPage({this.obj});
  MediaQueryData queryData;
  @override
  Widget build(BuildContext context) {

    queryData = MediaQuery.of(context);
    SetSize.init(context, width: queryData.size.width, height: queryData.size.height, allowFontScaling: false);

    double height = queryData.size.height/10;
    print("------>>>>>>>>>$height");
    return Scaffold(
      appBar: AppBar(
        title: TextWidget(text: "YOUR BMI RESULTS", fontsize: SetSize().setFont(22), font: FontWeight.w500,),
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                  height: MediaQuery.of(context).size.height -
                      (MediaQuery.of(context).size.height / 11 +
                          MediaQuery.of(context).size.height / 9),
                  width: MediaQuery.of(context).size.width,
                  color: Colors.transparent),
              Positioned(
                  top: MediaQuery.of(context).size.height / 9,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45.0),
                          topRight: Radius.circular(45.0),
                        ),
                        color: KActiveCardColor),
                    height: MediaQuery.of(context).size.height -
                        (MediaQuery.of(context).size.height / 11 +
                            MediaQuery.of(context).size.height / 9),
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 8 + 10),
                    child: Column(
                      children: <Widget>[
                        TextWidget(text: obj.resultTitle.toUpperCase(), fontsize: SetSize().setFont(25), font: FontWeight.w500),
                        SizedBox(
                          height: MediaQuery.of(context).size.width / 9,
                        ),
                        TextWidget(text: obj.resultBMI, fontsize: SetSize().setFont(85), font: FontWeight.bold),
                        SizedBox(
                          height: MediaQuery.of(context).size.width / 9,
                        ),
                        // Center(
                        Container(
                          padding: EdgeInsets.only(left:15,right:15),
                          child: TextWidget(text: obj.interpretation, fontsize: SetSize().setFont(18), font: FontWeight.normal,textAlign: TextAlign.center,)),
                        // ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width / 8,
                        ),
                        Container(
                            height: (MediaQuery.of(context).size.width / 7),
                            width: (MediaQuery.of(context).size.height / 3),
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: RaisedButton(
                                textColor: Colors.white,
                                color: Colors.blueGrey[600],
                                child: TextWidget(text: "Details", fontsize: SetSize().setFont(25), font: FontWeight.w500),
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(30.0),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DeatailsPage(
                                              detailsobj: obj,
                                            )),
                                  );
                                })),
                      ],
                    ),
                  )),
              Positioned(
                child: Container(
                  child: Center(
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: MediaQuery.of(context).size.height / 9,
                      backgroundImage: NetworkImage(obj.imageUrl),
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height / 4,
                  left: 25.0,
                  right: 25.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  )),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomButton(
        title: "RE-CALCULATE",
        onpress: () {
          Navigator.pop(context);
        },
        btnColor: KBottomContainerColor,
      ),
    );
  }
}

