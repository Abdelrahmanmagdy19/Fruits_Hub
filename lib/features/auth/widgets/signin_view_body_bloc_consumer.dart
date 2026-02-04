import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furits_ecommerce_app/core/helper_function/build_error_bar.dart';
import 'package:furits_ecommerce_app/features/auth/presentation/cubits/signin_cubit/signin_cubit.dart';
import 'package:furits_ecommerce_app/features/auth/widgets/login_view_body.dart';
import 'package:furits_ecommerce_app/features/home/presentation/views/home_view.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SigninViewBodBlocConsumer extends StatelessWidget {
  const SigninViewBodBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {
        if (state is SigninSuccess) {
          Navigator.pushNamed(context, HomeView.routeName);
        } else if (state is SigninFailure) {
          buildErrorBar(context, state.errorMessage);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is SigninLoading ? true : false,
          child: const SigninViewBody(),
        );
      },
    );
  }
}
