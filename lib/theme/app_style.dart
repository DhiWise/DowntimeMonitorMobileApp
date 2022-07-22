import 'package:flutter/material.dart';
import 'package:statusmobile/core/app_export.dart';

class AppStyle {
  static TextStyle textstyleregular20 = TextStyle(
    color: ColorConstant.black900,
    fontSize: getFontSize(
      20,
    ),
    fontWeight: FontWeight.w400,
  );

  static TextStyle textstylepoppinssemibold16 = TextStyle(
    color: ColorConstant.gray900,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
  );

  static TextStyle textstylepoppinssemibold201 =
      textstylepoppinssemibold20.copyWith(
    color: ColorConstant.black900,
  );

  static TextStyle textstylepoppinsmedium14 = TextStyle(
    color: ColorConstant.black90087,
    fontSize: getFontSize(
      14,
    ),
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
  );

  static TextStyle textstylepoppinsbold14 = TextStyle(
    color: ColorConstant.whiteA700,
    fontSize: getFontSize(
      14,
    ),
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w700,
  );

  static TextStyle textstylepoppinssemibold20 = TextStyle(
    color: ColorConstant.whiteA700,
    fontSize: getFontSize(
      20,
    ),
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
  );

  static TextStyle textstyleregular16 = TextStyle(
    color: ColorConstant.bluegray400,
    fontSize: getFontSize(
      16,
    ),
    fontWeight: FontWeight.w400,
  );
}
