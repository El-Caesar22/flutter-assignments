import 'package:flutter/material.dart';
import 'package:islami_app/util/app_color.dart';
import 'package:islami_app/util/app_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsTab extends StatefulWidget {

   SettingsTab ({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  bool arSwitch = false;

  bool darkmodeSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.settings , style: AppTheme.MediumTitleTextStyle, textAlign: TextAlign.start,),
          buildSettingsRow("العربية", arSwitch, (newValue){
            arSwitch = newValue;
            setState(() {
            });
          }),
          buildSettingsRow(AppLocalizations.of(context)!.darkMode, darkmodeSwitch, (newValue){
            darkmodeSwitch = newValue;
            setState(() {

            });
          }),
        ],
      ),
    );
  }

  Widget buildSettingsRow(String title , bool switchValue , Function(bool) onChanged){
    return Row(
      children: [
        Text(title , style: AppTheme.RegularTitleTextStyle,),
        Spacer(),
        Switch(value: switchValue, onChanged: onChanged , activeColor: AppColors.PrimaryColor,)
      ],
    );
  }
}
