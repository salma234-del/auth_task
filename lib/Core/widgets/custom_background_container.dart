import 'package:auth_app/Core/utils/app_colores.dart';
import 'package:auth_app/Core/utils/app_sizes.dart';
import 'package:flutter/material.dart';

class CustomBackgroundContainer extends StatelessWidget {
  const CustomBackgroundContainer({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizes.screenWidth(context),
      height: AppSizes.screenHeight(context),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.bgBegin,
            AppColors.bgEnd,
          ],
        ),
      ),
      child: child,
    );
  }
}
