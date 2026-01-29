import 'package:furits_ecommerce_app/core/services/data_base_services.dart';
import 'package:furits_ecommerce_app/core/services/firebase_auth_service.dart';
import 'package:furits_ecommerce_app/core/services/firestore_services.dart';
import 'package:furits_ecommerce_app/features/auth/data/repos/auth_repo_impl.dart';
import 'package:furits_ecommerce_app/features/auth/domain/repos/auth_repo.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;
void setUpGetIt() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<DataBaseServices>(FirestoreServices());
  getIt.registerSingleton<AuthRepo>(
    AuthRepoImpl(
      firebaseAuthService: getIt<FirebaseAuthService>(),
      dataBaseServices: getIt<DataBaseServices>(),
    ),
  );
}
