import 'package:dartz/dartz.dart';
import 'package:furits_ecommerce_app/core/errors/failures.dart';
import 'package:furits_ecommerce_app/features/auth/domain/entites/user_inties.dart';
import 'package:furits_ecommerce_app/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  @override
  Future<Either<Failures, UserInties>> createUserWithEmailAndPassword(
    String email,
    String name,
  ) {
    throw UnimplementedError();
  }
}
