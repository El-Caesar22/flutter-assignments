import 'package:flutter/material.dart';
import 'package:islami_app/Screens/AhadethDetails/ahadethDetails.dart';

import 'Screens/HomeScreen/home_screen.dart';
import 'Screens/SuraDetails/sura_details.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Islami",
      routes: {
        HomeScreen.routname : (_) => HomeScreen(),
        SuraDetails.routename : (_) => SuraDetails(),
        AhadethDetails.routename : (_) => AhadethDetails(),
      },
      initialRoute: HomeScreen.routname,
    );
  }

}
