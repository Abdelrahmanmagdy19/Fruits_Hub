import 'package:flutter/material.dart';
import 'package:furits_ecommerce_app/core/widgets/custom_text_from_field.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key, required this.onSaved});
  final void Function(String?)? onSaved;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextFromField(
      onSaved: widget.onSaved,
      obscureText: isObscure,
      suffixIcon: GestureDetector(
        onTap: () {
          setState(() {
            isObscure = !isObscure;
          });
        },
        child: isObscure
            ? Icon(Icons.remove_red_eye, color: Color(0xffC9CECF))
            : Icon(Icons.visibility_off, color: Color(0xffC9CECF)),
      ),
      hintText: 'كلمة المرور',
      keyboardType: TextInputType.visiblePassword,
    );
  }
}
