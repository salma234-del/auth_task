
import 'package:auth_app/Core/network/local/chache_helper.dart';
import 'package:auth_app/Core/utils/app_constants.dart';

bool getLoginStateFromCache() {
  return CacheHelper.getData(key: AppConstants.isLoginKey) ?? false;
}
