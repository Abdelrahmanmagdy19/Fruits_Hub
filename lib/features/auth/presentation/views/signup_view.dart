import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furits_ecommerce_app/core/services/get_it_services.dart';
import 'package:furits_ecommerce_app/core/widgets/custom_app_bar.dart';
import 'package:furits_ecommerce_app/features/auth/domain/repos/auth_repo.dart';
import 'package:furits_ecommerce_app/features/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:furits_ecommerce_app/features/auth/widgets/signup_view_bloc_consumer.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static const String routeName = 'signup_view';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(getIt<AuthRepo>()),
      child: Scaffold(
        appBar: buildAppBar(title: 'حساب جديد', context: context),
        body: SignupViewBlocConsumer(),
      ),
    );
  }
}
