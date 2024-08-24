import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String initial = '/';

  static final GoRouter router = GoRouter(
    routes: [],
  );
}
