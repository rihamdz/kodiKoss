// ignore_for_file: deprecated_member_use

import "package:flutter/material.dart";
import 'package:kodikoss/presentation/resources/font_manager.dart';
import 'package:kodikoss/presentation/resources/style_manager.dart';
import 'package:kodikoss/presentation/resources/value_manager.dart';

import 'color_manager.dart';

ThemeData getapplicationtheme() {
  return ThemeData(
      //main colors
      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.g2,
      primaryColorDark: ColorManager.g1,
      disabledColor: ColorManager.lightprimary,
      //cardview theme
      cardTheme: CardTheme(
        color: Colors.white,
        shadowColor: ColorManager.g1,
        elevation: AppSize.s4,
      ),
      //app bar theme
      appBarTheme: AppBarTheme(
        centerTitle: true,
        color: ColorManager.primary,
        elevation: AppSize.s4,
        shadowColor: ColorManager.g1,
        titleTextStyle:
            getRegularStyle(fontSize: Fontsize.s12, color: Colors.white),
      ),
      //button theme
      buttonTheme: ButtonThemeData(
        shape: const StadiumBorder(),
        disabledColor: ColorManager.g1,
        buttonColor: ColorManager.primary,
        splashColor: ColorManager.lightprimary,
      ),

      // elvatedbutton theme
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              textStyle: getRegularStyle(
                color: Colors.white,
                fontSize: Fontsize.s17,
              ),
              primary: ColorManager.primary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.s12)))),
      // text theme
      textTheme: TextTheme(
        headline1:
            getSemiBoldStyle(color: ColorManager.g2, fontSize: Fontsize.s12),
        subtitle1: getMediumStyle(
            color: ColorManager.lightprimary, fontSize: Fontsize.s14),
        caption: getRegularStyle(color: ColorManager.g1),
        bodyText1: getRegularStyle(color: ColorManager.primary, fontSize: 16),
      ),
// input decoration theme
      inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.all(AppPading.p8),
          hintStyle:
              getRegularStyle(color: Colors.grey, fontSize: Fontsize.s14),
          labelStyle:
              getMediumStyle(color: Colors.grey, fontSize: Fontsize.s14),
          errorStyle: getRegularStyle(color: Colors.red),
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.primary, width: AppSize.s1),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: AppSize.s1),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red, width: AppSize.s1),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.primary, width: AppSize.s1),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
          )));
}
