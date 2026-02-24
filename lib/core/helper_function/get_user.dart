import 'dart:convert';

import 'package:furits_ecommerce_app/constants.dart';
import 'package:furits_ecommerce_app/core/services/sherd_preferences_singleton.dart';
import 'package:furits_ecommerce_app/features/auth/data/models/user_model.dart';
import 'package:furits_ecommerce_app/features/auth/domain/entites/user_inties.dart';

UserInties getUser() {
  var userData = Prefs.getString(kUserData);
  var userEnties = UserModel.fromJson(jsonDecode(userData));
  return userEnties;
}
