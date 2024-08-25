import 'package:auth_app/Core/services/services_locator.dart';
import 'package:auth_app/Features/home/presentation/view_model/logout_cubit/logout_cubit.dart';
import 'package:auth_app/Features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:auth_app/Features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LogoutCubit(getIt()),
        ),
      ],
      child: const Scaffold(
        appBar: CustomHomeAppBar(),
        body: HomeViewBody(),
      ),
    );
  }
}
