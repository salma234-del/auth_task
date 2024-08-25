import 'package:auth_app/Core/widgets/custom_background_container.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Center(
        child: Text('Home Content'),
      ),
    );
  }
}
