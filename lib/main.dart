import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_app/Screens/AhadethDetails/ahadethDetails.dart';
import 'package:islami_app/Screens/Splash_Screen/splash_screen.dart';
import 'package:islami_app/util/app_theme.dart';
import 'package:islami_app/util/language_provider.dart';
import 'package:islami_app/util/theme_provider.dart';
import 'package:provider/provider.dart';
import 'Screens/HomeScreen/home_screen.dart';
import 'Screens/SuraDetails/sura_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main(){
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => LanguageProvider()),
      ChangeNotifierProvider(create: (_) => ThemeProvider()),
    ],
      child: MyApp()));
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    LanguageProvider languageProvider = Provider.of(context);
    ThemeProvider themeProvider = Provider.of(context);
    return MaterialApp(
      themeMode: themeProvider.currentTheme,
      theme: AppTheme.LightTheme,
      darkTheme: AppTheme.DarkTheme,
      debugShowCheckedModeBanner: false,
      supportedLocales: [Locale("en") , Locale("ar")],
      locale: Locale(languageProvider.currentLanguage),
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      title:"Islami",
      routes: {
        SplashScreen.routeName : (_) => SplashScreen(),
        HomeScreen.routname : (_) => HomeScreen(),
        SuraDetails.routename : (_) => SuraDetails(),
        AhadethDetails.routename : (_) => AhadethDetails(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }

}
