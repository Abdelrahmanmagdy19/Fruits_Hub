import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furits_ecommerce_app/core/helper_function/build_error_bar.dart';
import 'package:furits_ecommerce_app/features/auth/widgets/signup_view_body.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../presentation/cubits/signup_cubit/signup_cubit.dart';

class SignupViewBlocConsumer extends StatelessWidget {
  const SignupViewBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupFailure) {
          buildErrorBar(context, state.message);
        } else if (state is SignupSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('تم إنشاء الحساب بنجاح'),
              backgroundColor: Colors.green,
            ),
          );
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is SignupLoading ? true : false,
          child: SignupViewBody(),
        );
      },
    );
  }
}
