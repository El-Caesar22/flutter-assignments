import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_app/Screens/AhadethDetails/ahadethDetails.dart';
import 'Screens/HomeScreen/home_screen.dart';
import 'Screens/SuraDetails/sura_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      supportedLocales: [Locale("en") , Locale("ar")],
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
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
