import 'package:flutter/material.dart';

class AppColors {
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color blue = Colors.blue;
  static const Color grey = Colors.grey;

  static const Color lightBlue = Color(0xffB3E5FC);
  static const Color darkGrey = Color(0xff424242);
  static const Color red = Color(0xFFE57373);
  static const Color sampleColor = Color(0xffBBDBFE);
  // static const Color backColor = Color(0xffBBDBFE);

}

class AppTextStyle {
  static const kTitle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );

  static const kPortionName = TextStyle(
    color: AppColors.black,
    fontWeight: FontWeight.bold,
  );
  static const kItemName = TextStyle(
    color: AppColors.black,
    fontWeight: FontWeight.bold,
  );
  static const kSmallDeleteBtnTextStyle = TextStyle(
    color: AppColors.red,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static const kWinersNameTextStyle = TextStyle(
      fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.darkGrey);

  static const KWinnerScrnBetTextStyle = TextStyle(
    color: AppColors.darkGrey,
    fontSize: 50,
    fontWeight: FontWeight.bold,
  );

  static const kGameScreenBtnTeamNameStyle = TextStyle(
    fontSize: 20,
    color: AppColors.white,
  );
  static const kGameDescriptionTextStyle = TextStyle(fontSize: 15);
}
