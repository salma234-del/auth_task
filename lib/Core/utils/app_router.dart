import 'package:auth_app/Features/auth/presentation/views/forget_password_view.dart';
import 'package:auth_app/Features/auth/presentation/views/login_view.dart';
import 'package:auth_app/Features/auth/presentation/views/register_view.dart';
import 'package:auth_app/Features/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

import '../helper_functions/get_login_state_from_cache.dart';

abstract class AppRouter {
  static const String kInitial = '/';
  static const String kLoginView = '/login';
  static const String kForgetPasswordView = '/forget-password';
  static const String kRegisterView = '/register';
  static const String kHomeView = '/home';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: kInitial,
        builder: (context, state) =>
            !getLoginStateFromCache() ? const LoginView() : const HomeView(),
      ),
      GoRoute(
        path: kRegisterView,
        builder: (context, state) => const RegisterView(),
      ),
      GoRoute(
        path: kLoginView,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: kForgetPasswordView,
        builder: (context, state) => const ForgetPasswordView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
