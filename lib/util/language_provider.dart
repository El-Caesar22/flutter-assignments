import 'package:flutter/widgets.dart';

class LanguageProvider extends ChangeNotifier{
  String currentLanguage = "en";
  void setCurrentLanguage(String newLanguage){
    currentLanguage = newLanguage;
    notifyListeners();
  }
}