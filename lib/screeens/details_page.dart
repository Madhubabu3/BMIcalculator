import 'package:bmicaliculatorapp/components/Reusable_Card.dart';
import 'package:bmicaliculatorapp/components/RoundRised_Button.dart';
import 'package:bmicaliculatorapp/components/Text_widgt.dart';
import 'package:bmicaliculatorapp/components/bottom_Botton.dart';
import 'package:bmicaliculatorapp/components/constants.dart';
import 'package:bmicaliculatorapp/components/row-Details.dart';
import 'package:bmicaliculatorapp/screeens/input_page.dart';
import 'package:bmicaliculatorapp/screeens/normal_precautions_page.dart';
import 'package:bmicaliculatorapp/screeens/precautions_page.dart';
import 'package:bmicaliculatorapp/setsize.dart';
import 'package:bmicaliculatorapp/utils/Models.dart';
import 'package:flutter/material.dart';

class DeatailsPage extends StatelessWidget {
  final PersonDetails detailsobj;
  DeatailsPage({this.detailsobj});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextWidget(
            text: "YOUR DETAILS",
            fontsize: SetSize().setFont(22),
            font: FontWeight.w500),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding:
                  EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
              margin: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RowDetails(
                    leftText: "HEIGHT",
                    rightText: detailsobj.height.toString(),
                  ),
                  SizedBox(height: 15),
                  RowDetails(
                    leftText: "WEIGHT",
                    rightText: detailsobj.weight.toString(),
                  ),
                  SizedBox(height: 15),
                  RowDetails(
                    leftText: "GENDER",
                    rightText: detailsobj.gender,
                  ),
                  SizedBox(height: 15),
                  RowDetails(
                    leftText: "AGE",
                    rightText: detailsobj.age.toString(),
                  ),
                  SizedBox(height: 15),
                  RowDetails(
                    leftText: "BMI SCORE",
                    rightText: detailsobj.resultBMI.toString(),
                  ),
                  SizedBox(height: 15),
                  RowDetails(
                    leftText: "BMI STATUS",
                    rightText: detailsobj.resultTitle,
                  ),
                  SizedBox(height: 15),
                  RowDetails(
                    leftText: "INTERPRETATION",
                    rightText: detailsobj.interpretation,
                  ),
                  SizedBox(height: 15),
                ],
              ),
              decoration: BoxDecoration(
                  color: KActiveCardColor,
                  borderRadius: BorderRadius.circular(10)),
            ),
            SizedBox(
              height:40,
            ),
            
            Container(
                height: (MediaQuery.of(context).size.width / 7),
                width: (MediaQuery.of(context).size.height / 3),
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: RoundRisedButton(
                  onpress: () {
                    if (detailsobj.resultTitle == "Normal") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NormalPrecautions()),
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PrecautionsPage(
                                  status: detailsobj.resultTitle,
                                )),
                      );
                    }
                  },
                  title: "Click Here", color: KContainerColor,
                )),

            SizedBox(
              height:10,
            ),
                Container(
              child: TextWidget(
                  text: "To know more about your BMI? ",
                  fontsize: SetSize().setFont(17),
                  font: FontWeight.normal),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomButton(
        title: "RE-CALCULATE",
        onpress: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => InputPage()),
          );
        },
        btnColor: KBottomContainerColor,
      ),
    );
  }
}
