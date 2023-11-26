import 'package:flutter/material.dart';
import 'package:miguel_marin_training/ui/RegisterScreen/widgets/register_form.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: RegisterForm(),
    );
  }
}
