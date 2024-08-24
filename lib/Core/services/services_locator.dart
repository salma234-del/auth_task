import 'package:auth_app/Core/services/firebase_auth_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

class ServicesLocator {
  static void setup() {
    getIt.registerLazySingleton(() => FirebaseAuthService());
  }
}
