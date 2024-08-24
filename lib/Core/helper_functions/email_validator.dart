
import 'package:auth_app/Core/utils/app_constants.dart';
import 'package:auth_app/Core/utils/app_strings.dart';

String? emailValidator(String? value) {
  if (value == null || value.isEmpty) {
    return AppStrings.requiredField;
  } else {
    bool valid = AppConstants.emailRegex.hasMatch(value);
    if (!valid) {
      return AppStrings.invalidEmail;
    }
  }
  return null;
}
