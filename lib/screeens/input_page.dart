import 'package:bmicaliculatorapp/caliculation.dart';
import 'package:bmicaliculatorapp/components/Icon_Content.dart';
import 'package:bmicaliculatorapp/components/Reusable_Card.dart';
import 'package:bmicaliculatorapp/components/Rounded_Icon.dart';
import 'package:bmicaliculatorapp/components/bottom_Botton.dart';
import 'package:bmicaliculatorapp/components/constants.dart';
import 'package:bmicaliculatorapp/screeens/result_page.dart';
import 'package:bmicaliculatorapp/utils/Models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender{
  male,
  female,
}
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedgender;
  String url;
  int height = 150;
  int weight = 30;
  int age = 10;
  String maleUrl = "https://cdn1.iconfinder.com/data/icons/website-internet/48/website_-_male_business-512.png";
  String femaleUrl = "https://cdn1.iconfinder.com/data/icons/website-internet/48/website_-_female_business-512.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Helth Care Checker",style: KBtnTextStyle,),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(child:
         Row(
           children: <Widget>[
             Expanded(
               child:ReusableCard(
                 onPress: (){
                   setState(() {
                    selectedgender = Gender.male;
                    url = maleUrl;   
                   });
                 },
                 color: selectedgender == Gender.male ? KActiveCardColor : KInActiveCardColor,
               cardChild:IconContent(icon:FontAwesomeIcons.mars,name: "MALE",)
               ),
             ),
             Expanded(  
               child:ReusableCard(
                 onPress: (){
                   setState(() {
                     selectedgender = Gender.female;
                     url = femaleUrl;
                   });
                 },
                 color: selectedgender == Gender.female ? KActiveCardColor : KInActiveCardColor,cardChild:
             IconContent(icon: FontAwesomeIcons.venus,name: "FEMALE",),
             ),
               
             ),
           ],
         ),
          ),
          Expanded(child:
           Container(
            //  padding: EdgeInsests.only(top:5),
                        child: ReusableCard(color: KActiveCardColor,
             cardChild: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                
                 Text("HEIGHT",style: KLabelTextStyle,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.baseline,
                   textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Text(height.toString(),style: KNumbeeTextStyle,),
                    // AutoSizeText(
                    //   height.toString(),style: KNumbeeTextStyle,
                    // ),
                    Text("cm",style: KLabelTextStyle)
                  ],
                 ),
                     Slider(
                     value: height.toDouble(),
                     min: 120,
                     max: 280,
                     activeColor: Colors.blue,
                     inactiveColor: Colors.white60,
                     onChanged: (double newvalue){
                       setState(() {
                         height = newvalue.round();
                       });
                     },
                   ),
               ],
             ),),
           ),
           
          ),
          Expanded(child:
           ReusableCard(color: KActiveCardColor,
           cardChild: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               Text("WEIGHT",style: KLabelTextStyle,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.baseline,
                 textBaseline: TextBaseline.alphabetic,
                 
                children: <Widget>[
                  FittedBox(
                  child: Text(weight.toString(),style: KNumbeeTextStyle,)),
                  Text("Kg",style: KLabelTextStyle)
                ],
               ),
                   Slider(
                   value: weight.toDouble(),
                   min: 20,
                   max: 200,
                  //  divisions: 1,
                   activeColor: Colors.blue,
                   inactiveColor: Colors.white60, 
                   onChanged: (double value) {
                     setState(() {
                       weight = value.round();
                     });
                     
                   },
                  
                 ),
             ],
           ),),
           
          ),
          
              Expanded(
              
                child:
               ReusableCard(color: KActiveCardColor,
               cardChild: Row(
                 children: <Widget>[
                    Expanded(
                
                child: Container(
                  margin: EdgeInsets.all(10),
                 child: 
                        RoundIcon(icon: FontAwesomeIcons.minus,onPressed: (){
                          setState(() {
                            if(age>0){
                            age--;
                            }
                          });
                        },),
                       
                       
                 
                ),),
                   Expanded(child:  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("AGE",style: KLabelTextStyle,),
                  Text(age.toString(),style: KNumbeeTextStyle,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    
                  ),
                ],
              ),
              ),
              Expanded(child: 
               Container(
                 margin: EdgeInsets.all(10),
                                child: RoundIcon(icon: FontAwesomeIcons.plus,onPressed: (){
                            setState(() {
                              age++;
                            });
                          },),
               ))
             
                 ],
               ),
              ),
               
              ),
            
          BottomButton(
            title: "CALICULATE BMI",
            onpress: (){
              setState(() {
                  CalculatorBrain cal = CalculatorBrain(height, weight);
                  String bmi = cal.getBMIStauts();
                  String intr = cal.getInterpretation();
                  String result = cal.getResult();
                  print("....$bmi....$intr,,,,,$result");
                  final data = PersonDetails(resultBMI: bmi,interpretation: intr,resultTitle: result,age: age,weight: weight,imageUrl: url == null ? maleUrl : url,gender: selectedgender == Gender.female? "Female":"Male",height: height);
                Navigator.push( context, 
                MaterialPageRoute(
                  builder: (context)=> ResultPage(obj: data),
                ),
                );
                
              
                
              },
              );
            }, btnColor: KBottomContainerColor,
          )
        ],
      ),
    );
  }
}

/*,*/

                    