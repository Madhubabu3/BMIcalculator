import 'package:bmicaliculatorapp/screeens/input_page.dart';
import 'package:flutter/material.dart';

var routes = <String, WidgetBuilder>{
  "/home": (BuildContext context) => InputPage(),
};

void main() => runApp(BMICaliculator());

class BMICaliculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        sliderTheme: SliderTheme.of(context).copyWith(
          inactiveTrackColor: Colors.white54,
          activeTrackColor: Colors.lightBlue,
          thumbColor: Colors.blue,
          overlayColor: Colors.lightBlue[50],
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 16.0),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
        ),
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}