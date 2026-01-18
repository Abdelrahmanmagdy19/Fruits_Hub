import 'package:firebase_auth/firebase_auth.dart';
import 'package:furits_ecommerce_app/core/errors/exception.dart';

class FirebaseAuthService {
  Future<User> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'كلمة مرور ضعيفة') {
        throw CustomException(message: 'كلمة المرور المقدمة ضعيفة للغاية');
      } else if (e.code == 'البريد الإلكتروني قيد الاستخدام بالفعل') {
        throw CustomException(
          message: 'الحساب موجود بالفعل لهذا البريد الإلكتروني.',
        );
      } else {
        throw CustomException(
          message: 'حدث خطأ غير معروف. يرجى المحاولة مرة أخرى.',
        );
      }
    } catch (e) {
      throw CustomException(
        message: 'حدث خطأ غير معروف. يرجى المحاولة مرة أخرى.',
      );
    }
  }
}
