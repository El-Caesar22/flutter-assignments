import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/model/sura_details_args.dart';
import 'package:islami_app/util/app_color.dart';
import 'package:islami_app/util/app_theme.dart';
import 'package:islami_app/widgets/app_scaffold.dart';

class SuraDetails extends StatefulWidget {
  static String routename = "SuraName";

  const SuraDetails ({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  String fileContent = "";

  @override
  Widget build(BuildContext context) {
    SuraDetailsArgs args = ModalRoute.of(context)!.settings.arguments as SuraDetailsArgs;
    if(fileContent.isEmpty){
      readSuraFile(args.fileName);
    }
    return AppScaffold(
        title: args.suraName,
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

  void readSuraFile(String fileName) async {
     Future<String> futureFileContent = rootBundle.loadString("Assets/QuranBook/$fileName");
     fileContent = await futureFileContent;
     List<String> fileLine = fileContent.split("\n");
     for(int i = 0 ; i < fileLine.length ;i++){
       fileLine[i] += "{${i+1}}";
     }
     fileContent = fileLine.join(" ");
     setState(() {

     });
  }
}
