import 'package:auth_app/Core/utils/app_colores.dart';
import 'package:auth_app/Core/utils/app_constants.dart';
import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData.dark().copyWith(
  primaryColor: AppColors.primary,
  appBarTheme: const AppBarTheme(
    elevation: 0,
    iconTheme: IconThemeData(color: AppColors.primary),
  ),
  textTheme: ThemeData.dark().textTheme.apply(
        fontFamily: AppConstants.defaultFontFamily,
      ),
);
