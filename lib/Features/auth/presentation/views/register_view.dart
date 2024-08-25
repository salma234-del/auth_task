import 'package:auth_app/Core/services/services_locator.dart';
import 'package:auth_app/Features/auth/presentation/view_model/register_cubit/register_cubit.dart';
import 'package:auth_app/Features/auth/presentation/views/widgets/register_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(getIt()),
      child: const Scaffold(
        body: RegisterViewBody(),
      ),
    );
  }
}
