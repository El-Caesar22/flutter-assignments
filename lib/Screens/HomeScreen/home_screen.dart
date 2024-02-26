import 'package:flutter/material.dart';
import 'package:islami_app/Tabs/Ahadeth/ahadeth_tab.dart';
import 'package:islami_app/Tabs/Quran/quran_tab.dart';
import 'package:islami_app/Tabs/Sebha/sebha_tab.dart';
import 'package:islami_app/Tabs/Settings/settingsTab.dart';
import 'package:islami_app/util/app_color.dart';
import 'package:islami_app/util/app_images.dart';
import 'package:islami_app/util/app_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../Tabs/Radio/radio_tab.dart';

class HomeScreen extends StatefulWidget {
  static String routname = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTabIndex = 0;
  Widget Body = QuranTab();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AppImages.MainBackground))),
      child: Scaffold(
        backgroundColor: AppColors.Transparent,
        appBar: buildAppBar(),
        bottomNavigationBar: buildBottomNavigation(),
        body: Body,
      ),
    );
  }

  AppBar buildAppBar() => AppBar(
        elevation: 0,
        backgroundColor: AppColors.Transparent,
        title: Text(AppLocalizations.of(context)!.islame, style: AppTheme.AppBarTextStyle),
        centerTitle: true,
      );

  Widget buildBottomNavigation() => Theme(
        data: ThemeData(canvasColor: AppColors.PrimaryColor),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AppImages.QuranIcon), size: 35),
                label: "Quran"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AppImages.AhadethIcon), size: 35),
                label: "Ahadeth"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AppImages.RadioIcon), size: 35),
                label: "Radio"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AppImages.SebhaIcon), size: 35),
                label: "Sebha"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings, size: 35),
                label: "Setting")
          ],
          selectedItemColor: AppColors.lightBlack,
          currentIndex: currentTabIndex,
          onTap: (index) {
            currentTabIndex = index;
            if (currentTabIndex == 0) {
              Body = QuranTab();
            } else if (currentTabIndex == 1) {
              Body = AhadethTab();
            } else if (currentTabIndex == 2) {
              Body = RadioTab();
            } else if (currentTabIndex == 3) {
              Body = SebhaTab();
            }
            else if(currentTabIndex == 4){
              Body = SettingsTab();
            }
            setState(() {});
          },
        ),
      );
}
