import 'package:flutter/material.dart';
import 'package:miguel_marin_training/ui/RegisterScreen/register_screen.dart';
import 'package:miguel_marin_training/ui/Routes/routes.dart';
import 'package:miguel_marin_training/ui/theme/colors.dart';

class RegisterLabel extends StatelessWidget {
  final String label;
  const RegisterLabel({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Routes.register);
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            label,
            style: TextStyle(
              decoration: TextDecoration.underline,
              decorationColor: ColorsScheme().pink,
              color: ColorsScheme().pink,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}
