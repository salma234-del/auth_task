import 'package:auth_app/Core/services/firebase_auth_service.dart';
import 'package:auth_app/Features/auth/data/repos/auth_repo.dart';
import 'package:auth_app/Features/auth/data/repos/auth_repo_impl.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

class ServicesLocator {
  static void setup() {
    getIt.registerLazySingleton(() => FirebaseAuthService());
    getIt.registerLazySingleton<AuthRepo>(() => AuthRepoImpl(getIt()));
  }
}
