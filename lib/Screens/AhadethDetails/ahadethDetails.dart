import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/model/ahadeth_details_args.dart';
import 'package:islami_app/model/sura_details_args.dart';
import 'package:islami_app/util/app_color.dart';
import 'package:islami_app/util/app_theme.dart';
import 'package:islami_app/widgets/app_scaffold.dart';

class AhadethDetails extends StatefulWidget {
  static String routename = "AhadethDetails";

  const AhadethDetails ({super.key});

  @override
  State<AhadethDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<AhadethDetails> {
  String fileContent = "";

  @override
  Widget build(BuildContext context) {
    AhadethDetailsArgs args = ModalRoute.of(context)!.settings.arguments as AhadethDetailsArgs;
    if(fileContent.isEmpty){
      readHadethFile(args.fileName);
    }
    return AppScaffold(
      title: args.hadethName,
      body: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: AppColors.White
        ),
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.symmetric(horizontal: 29 ,vertical: MediaQuery.of(context).size.height * 0.07),
        child: SingleChildScrollView(
          child: Container(
            child: Text(
              fileContent,
              style: AppTheme.MediumTitleTextStyle,
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }

  void readHadethFile(String fileName) async {
    Future<String> futureFileContent = rootBundle.loadString("Assets/Ahadeth/$fileName");
    fileContent = await futureFileContent;
    setState(() {

    });
  }
}
