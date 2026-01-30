import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
    User? user;
    try {
      user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      var userInties = UserInties(uId: user.uid, email: email, name: name);
      await addUserData(user: userInties);
      return right(userInties);
    } on CustomException catch (e) {
      await deleteUser(user);
      return left(ServerFailure(e.message));
    } catch (e) {
      await deleteUser(user);
      log('Exception in AuthRepoImpl.createUserWithEmailAndPassword: $e');
      return left(ServerFailure('حدث خطأ غير معروف. يرجى المحاولة مرة أخرى.'));
    }
  }

  Future<void> deleteUser(User? user) async {
    if (user != null) {
      await firebaseAuthService.deleteUser();
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
    User? user;
    try {
      user = await firebaseAuthService.signInWithGoogle();
      var userInties = UserModel.fromFirebaseUser(user);
      await addUserData(user: userInties);
      return right(userInties);
    } catch (e) {
      await deleteUser(user);
      log('Exception in AuthRepoImpl.signInWithGoogle: $e');
      return left(ServerFailure('حدث خطأ غير معروف. يرجى المحاولة مرة أخرى.'));
    }
  }

  @override
  Future<Either<Failures, UserInties>> signInWithFacebook() async {
    User? user;
    try {
      user = await firebaseAuthService.signInWithFacebook();
      var userInties = UserModel.fromFirebaseUser(user);
      await addUserData(user: userInties);
      return right(userInties);
    } catch (e) {
      await deleteUser(user);
      log('Exception in AuthRepoImpl.signInWithFacebook: $e');
      return left(ServerFailure('حدث خطأ غير معروف. يرجى المحاولة مرة أخرى.'));
    }
  }

  @override
  Future<dynamic> addUserData({required UserInties user}) async {
    await dataBaseServices.addUserData(BackendPoint.addUserData, user.toMap());
  }
}
