import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:furits_ecommerce_app/core/errors/exception.dart';
import 'package:furits_ecommerce_app/core/errors/failures.dart';
import 'package:furits_ecommerce_app/core/services/data_base_services.dart';
import 'package:furits_ecommerce_app/core/services/firebase_auth_service.dart';
import 'package:furits_ecommerce_app/core/utils/backend_point.dart';
import 'package:furits_ecommerce_app/features/auth/data/models/user_model.dart';
import 'package:furits_ecommerce_app/features/auth/domain/entites/user_inties.dart';
import 'package:furits_ecommerce_app/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;
  final DataBaseServices dataBaseServices;
  AuthRepoImpl({
    required this.firebaseAuthService,
    required this.dataBaseServices,
  });
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
      var userInties = UserModel.fromFirebaseUser(user);
      await addUserData(user: userInties);
      return right(userInties);
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log('Exception in AuthRepoImpl.createUserWithEmailAndPassword: $e');
      return left(ServerFailure('حدث خطأ غير معروف. يرجى المحاولة مرة أخرى.'));
    }
  }

  @override
  Future<Either<Failures, UserInties>> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      var user = await firebaseAuthService.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log('Exception in AuthRepoImpl.signInWithEmailAndPassword: $e');
      return left(ServerFailure('حدث خطأ غير معروف. يرجى المحاولة مرة أخرى.'));
    }
  }

  @override
  Future<Either<Failures, UserInties>> signInWithGoogle() async {
    try {
      var user = await firebaseAuthService.signInWithGoogle();
      return right(UserModel.fromFirebaseUser(user));
    } catch (e) {
      log('Exception in AuthRepoImpl.signInWithGoogle: $e');
      return left(ServerFailure('حدث خطأ غير معروف. يرجى المحاولة مرة أخرى.'));
    }
  }

  @override
  Future<Either<Failures, UserInties>> signInWithFacebook() async {
    try {
      var user = await firebaseAuthService.signInWithFacebook();
      return right(UserModel.fromFirebaseUser(user));
    } catch (e) {
      log('Exception in AuthRepoImpl.signInWithFacebook: $e');
      return left(ServerFailure('حدث خطأ غير معروف. يرجى المحاولة مرة أخرى.'));
    }
  }

  @override
  Future<dynamic> addUserData({required UserInties user}) async {
    await dataBaseServices.addUserData(BackendPoint.addUserData, user.toMap());
  }
}
