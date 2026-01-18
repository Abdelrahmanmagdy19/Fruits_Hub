import 'package:dartz/dartz.dart';
import 'package:furits_ecommerce_app/core/errors/failures.dart';
import 'package:furits_ecommerce_app/features/auth/domain/entites/user_inties.dart';

abstract class AuthRepo {
  Future<Either<Failures, UserInties>> createUserWithEmailAndPassword(
    String email,
    String name,
  );
}
