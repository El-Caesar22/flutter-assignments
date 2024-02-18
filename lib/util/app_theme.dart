import 'package:flutter/material.dart';
import 'app_color.dart';

abstract class AppTheme{
  static const TextStyle AppBarTextStyle = TextStyle(
      fontSize: 30,
      color: AppColors.lightBlack,
      fontWeight: FontWeight.bold,
  );
  static const TextStyle MediumTitleTextStyle = TextStyle(
      color: AppColors.lightBlack,
      fontSize: 20,
      fontWeight: FontWeight.w600
  );
  static const TextStyle RegularTitleTextStyle = TextStyle(
      color: AppColors.lightBlack,
      fontSize: 20,
      fontWeight: FontWeight.w400
  );

}