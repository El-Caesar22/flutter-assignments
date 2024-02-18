import 'package:flutter/material.dart';
import 'package:islami_app/HomeScreen/home_screen.dart';
import 'package:islami_app/SuraDetails/sura_details.dart';

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
        SuraDetails.routename : (_) => SuraDetails()
      },
      initialRoute: HomeScreen.routname,
    );
  }

}
