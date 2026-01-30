import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:furits_ecommerce_app/core/errors/exception.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthService {
  Future deleteUser() async {
    try {
      await FirebaseAuth.instance.currentUser!.delete();
    } catch (e) {
      log('Exception in FirebaseAuthService.deleteUser: $e');
    }
  }

  Future<User> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log(
        'Exception in FirebaseAuthService.createUserWithEmailAndPassword: $e',
      );
      if (e.code == 'Weak-password') {
        throw CustomException(message: 'كلمة المرور المقدمة ضعيفة للغاية');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(
          message: 'الحساب موجود بالفعل لهذا البريد الإلكتروني.',
        );
      } else if (e.code == 'network-request-failed') {
        throw CustomException(
          message:
              'لا يوجد اتصال بالإنترنت. يرجى التحقق من اتصالك والمحاولة مرة أخرى.',
        );
      } else {
        throw CustomException(
          message: 'حدث خطأ غير معروف. يرجى المحاولة مرة أخرى.',
        );
      }
    } catch (e) {
      log(
        'Exception in FirebaseAuthService.createUserWithEmailAndPassword: $e',
      );
      throw CustomException(
        message: 'حدث خطأ غير معروف. يرجى المحاولة مرة أخرى.',
      );
    }
  }

  Future<User> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log('Exception in FirebaseAuthService.signInWithEmailAndPassword: $e');
      if (e.code == 'user-not-found') {
        throw CustomException(
          message: 'لا يوجد مستخدم مسجل بهذا البريد الإلكتروني.',
        );
      } else if (e.code == 'wrong-password') {
        throw CustomException(message: 'كلمة المرور غير صحيحة.');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(
          message:
              'لا يوجد اتصال بالإنترنت. يرجى التحقق من اتصالك والمحاولة مرة أخرى.',
        );
      } else {
        throw CustomException(
          message: 'حدث خطأ غير معروف. يرجى المحاولة مرة أخرى.',
        );
      }
    } catch (e) {
      log('Exception in FirebaseAuthService.signInWithEmailAndPassword: $e');
      throw CustomException(
        message: 'حدث خطأ غير معروف. يرجى المحاولة مرة أخرى.',
      );
    }
  }

  Future<User> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    return (await FirebaseAuth.instance.signInWithCredential(credential)).user!;
  }

  Future<User> signInWithFacebook() async {
    final LoginResult loginResult = await FacebookAuth.instance.login();

    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.tokenString);

    return (await FirebaseAuth.instance.signInWithCredential(
      facebookAuthCredential,
    )).user!;
  }
}
