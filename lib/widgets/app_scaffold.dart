import 'package:flutter/material.dart';
import '../util/app_color.dart';
import '../util/app_images.dart';
import '../util/app_theme.dart';

class AppScaffold extends StatelessWidget {
  final String title;
  final Widget? bottomNavigationBar;
  final Widget body;
  AppScaffold({super.key , required this.title , required this.body , this.bottomNavigationBar});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AppImages.MainBackground))),
      child: Scaffold(
        backgroundColor: AppColors.Transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.Transparent,
          title: Text(title, style: AppTheme.AppBarTextStyle),
          centerTitle: true,
        ),
        bottomNavigationBar: bottomNavigationBar,
        body: body,
      ),
    );
  }
}
