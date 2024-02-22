import 'package:flutter/material.dart';
import 'package:islami_app/model/sura_details_args.dart';
import 'package:islami_app/Suras/suras.dart';
import 'package:islami_app/util/app_color.dart';
import 'package:islami_app/util/app_images.dart';
import 'package:islami_app/util/app_theme.dart';

import '../../Screens/SuraDetails/sura_details.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 3, child: Center(child: Image.asset(AppImages.QuranTabLogo))),
        Expanded(
          flex: 7,
          child: Stack(
            alignment: Alignment.center,
            children: [
              buildScreenContent(),
              VerticalDivider(
                indent: 7,
                color: AppColors.PrimaryColor,
                thickness: 4,
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget buildScreenContent() {
    return Column(
      children: [
        Divider(
          thickness: 4,
          color: AppColors.PrimaryColor,
        ),
        Row(
          children: [
            Expanded(
                child: Text("Verses Number",
                    textAlign: TextAlign.center,
                    style: AppTheme.MediumTitleTextStyle)),
            Expanded(
                child: Text("Sura Name",
                    textAlign: TextAlign.center,
                    style: AppTheme.MediumTitleTextStyle)),
          ],
        ),
        Divider(
          thickness: 4,
          color: AppColors.PrimaryColor,
        ),
        Expanded(
            flex: 7,
            child: buildSurasListView()),
      ],
    );
  }

  ListView buildSurasListView() {
    return ListView.builder(
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, SuraDetails.routename,
                        arguments: SuraDetailsArgs(
                            fileName: "${index + 1}.txt",
                            suraName: Suras.suraNames[index]));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                          child: Text(
                        "${Suras.versesNumber[index]}",
                        textAlign: TextAlign.center,
                        style: AppTheme.RegularTitleTextStyle,
                      )),
                      Expanded(
                          child: Text(
                        Suras.suraNames[index],
                        textAlign: TextAlign.center,
                        style: AppTheme.RegularTitleTextStyle,
                      ))
                    ],
                  ),
                );
              },
              itemCount: Suras.suraNames.length);
  }
}
