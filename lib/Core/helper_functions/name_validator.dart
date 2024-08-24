
import 'package:auth_app/Core/utils/app_constants.dart';
import 'package:auth_app/Core/utils/app_strings.dart';

String? nameValidator(value) {
  if (value.isEmpty || value == null) {
    return AppStrings.requiredField;
  } else {
    bool valid = AppConstants.nameRegex.hasMatch(value);
    if (!valid) {
      return AppStrings.invalidName;
    }
  }
  return null;
}
