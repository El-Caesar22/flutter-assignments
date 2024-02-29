import 'package:flutter/material.dart';
import 'package:islami_app/util/app_color.dart';
import 'package:islami_app/util/app_images.dart';
import 'package:islami_app/util/app_theme.dart';

class ThemeProvider extends ChangeNotifier{
    ThemeMode currentTheme = ThemeMode.light;

    toogleTheme(bool darkThemeSwitchValue){
      currentTheme = darkThemeSwitchValue ? ThemeMode.dark : ThemeMode.light;
      notifyListeners();
    }

    String get mainBackground =>
      currentTheme == ThemeMode.light ? AppImages.lightBackground : AppImages.darkBackground;

     get AppBarTextStyle =>
        currentTheme == ThemeMode.light ? AppTheme.lightAppBarTextStyle : AppTheme.darkAppBarTextStyle;

    get ContentTextStyle =>
        currentTheme == ThemeMode.light ? AppTheme.lightContentTextStyle : AppTheme.darkContentTextStyle;

     get MediumTitleTextStyle =>
        currentTheme == ThemeMode.light ? AppTheme.lightMediumTitleTextStyle : AppTheme.darkMediumTitleTextStyle;

     get RegularTitleTextStyle =>
        currentTheme == ThemeMode.light ? AppTheme.lightRegularTitleTextStyle : AppTheme.darkRegularTitleTextStyle;

     get SebhaCounter =>
        currentTheme == ThemeMode.light ? AppTheme.lightSebhaCounter : AppTheme.darkSebhaCounter;

     get IntSebhaCounter =>
        currentTheme == ThemeMode.light ? AppTheme.lightIntSebhaCounter : AppTheme.darkIntSebhaCounter;

    get ContentBackground =>
        currentTheme == ThemeMode.light ? AppColors.White : AppColors.darkContentBackGround;

    get SplashLogo =>
        currentTheme == ThemeMode.light ? AppImages.lightSplashLogo : AppImages.darkSplashLogo;

    get SplashBackground =>
        currentTheme == ThemeMode.light ? AppColors.offWhite: AppColors.darkBlue;
}