import 'package:bloc/bloc.dart';
import 'package:furits_ecommerce_app/features/auth/domain/entites/user_inties.dart';
import 'package:furits_ecommerce_app/features/auth/domain/repos/auth_repo.dart';
import 'package:meta/meta.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.authRepo) : super(SignupInitial());
  final AuthRepo authRepo;

  Future<void> createUserWithEmailAndPassword(
    String email,
    String name,
    String password,
  ) async {
    emit(SignupLoading());
    final result = await authRepo.createUserWithEmailAndPassword(
      email,
      name,
      password,
    );
    result.fold(
      (failure) => emit(SignupFailure(message: failure.message)),
      (userInties) => emit(SignupSuccess(userInties: userInties)),
    );
  }
}
