import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:furits_ecommerce_app/core/errors/exception.dart';
import 'package:furits_ecommerce_app/core/errors/failures.dart';
import 'package:furits_ecommerce_app/core/services/firebase_auth_service.dart';
import 'package:furits_ecommerce_app/features/auth/data/models/user_model.dart';
import 'package:furits_ecommerce_app/features/auth/domain/entites/user_inties.dart';
import 'package:furits_ecommerce_app/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;
  AuthRepoImpl({required this.firebaseAuthService});
  @override
  Future<Either<Failures, UserInties>> createUserWithEmailAndPassword(
    String email,
    String name,
    String password,
  ) async {
    try {
      var user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log('Exception in AuthRepoImpl.createUserWithEmailAndPassword: $e');
      return left(ServerFailure('حدث خطأ غير معروف. يرجى المحاولة مرة أخرى.'));
    }
  }
}
