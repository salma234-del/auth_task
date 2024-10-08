import 'package:auth_app/Core/utils/app_colores.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void showCustomLoading({
  required BuildContext context,
}) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) => const SpinKitChasingDots(
      color: AppColors.primary,
      size: 50.0,
    ),
  );
}
