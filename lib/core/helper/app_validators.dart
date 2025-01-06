class AppValidators {
  static String? displayNameValidator(String? displayName) {
    if (displayName == null || displayName.isEmpty) {
      return 'الاسم لا يمكن أن يكون فارغ';
    }
    if (displayName.length < 3 || displayName.length > 20) {
      return 'الاسم يجب أن يكون بين 3 و 20 حرف';
    }
    return null;
  }

  static String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'البريد الإلكتروني لا يمكن أن يكون فارغ';
    }
    if (!RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    ).hasMatch(value)) {
      return 'أدخل بريد إلكتروني صالح';
    }
    if (value.length > 320) {
      return 'البريد الإلكتروني طويل جداً';
    }
    return null;
  }

  static String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'كلمة المرور لا يمكن أن تكون فارغة';
    }
    if (value.length < 8) {
      return 'كلمة المرور يجب أن تكون على الأقل 8 حروف';
    }
    if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return 'كلمة المرور يجب أن تحتوي على حرف كبير';
    }
    if (!RegExp(r'[a-z]').hasMatch(value)) {
      return 'كلمة المرور يجب أن تحتوي على حرف صغير';
    }
    if (!RegExp(r'\d').hasMatch(value)) {
      return 'كلمة المرور يجب أن تحتوي على رقم';
    }
    if (!RegExp(r'[!@#\$&*~]').hasMatch(value)) {
      return 'كلمة المرور يجب أن تحتوي على رمز خاص مثل !@#\$&*~';
    }
    return null;
  }

  static String? repeatPasswordValidator({String? value, String? password}) {
    if (value != password) {
      return 'كلمتا المرور غير متطابقتين';
    }
    return null;
  }
}
