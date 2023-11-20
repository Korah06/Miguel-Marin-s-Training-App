import 'package:flutter/material.dart';
import 'package:miguel_marin_training/ui/theme/colors.dart';

class LoginButton extends StatelessWidget {
  final String label;
  const LoginButton({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorsScheme().pink,
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          minimumSize: const Size(220, 50),
        ),
        onPressed: () {},
        child: Text(
          label,
          style: TextStyle(color: ColorsScheme().gray),
        ),
      ),
    );
  }
}
