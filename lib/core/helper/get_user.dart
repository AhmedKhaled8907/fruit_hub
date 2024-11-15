import 'dart:convert';

import 'package:fruit_hub/core/helper/constants.dart';
import 'package:fruit_hub/core/services/shared_preferences_singleton.dart';
import 'package:fruit_hub/features/auth/data/models/user_model.dart';
import 'package:fruit_hub/features/auth/domain/entities/user_entity.dart';

UserEntity getUser() {
  var jsonString = Prefs.getString(kUserData);
  var userEntity = UserModel.fromJson(jsonDecode(jsonString));

  return userEntity;
}
