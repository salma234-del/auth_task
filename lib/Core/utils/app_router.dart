import 'package:auth_app/Features/auth/presentation/views/login_view.dart';
import 'package:auth_app/Features/auth/presentation/views/register_view.dart';
import 'package:auth_app/Features/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kInitial = '/';
  static const String kLoginView = '/login';
  static const String kRegisterView = '/register';
  static const String kHomeView = '/home';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: kInitial,
        builder: (context, state) => const LoginView(),
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
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
