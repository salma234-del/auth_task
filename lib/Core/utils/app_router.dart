import 'package:auth_app/Features/auth/presentation/views/register_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kInitial = '/';
  static const String kLoginView = '/login';
  static const String kRegisterView = '/register';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: kInitial,
        builder: (context, state) => const RegisterView(),
      ),
      GoRoute(
        path: kRegisterView,
        builder: (context, state) => const RegisterView(),
      ),
    ],
  );
}
