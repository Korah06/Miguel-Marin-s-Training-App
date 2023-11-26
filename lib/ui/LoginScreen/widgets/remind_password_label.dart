import 'package:flutter/material.dart';
import 'package:miguel_marin_training/ui/RemindPasswordScreen/remind_password_screen.dart';
import 'package:miguel_marin_training/ui/theme/colors.dart';

class RemindPasswordLabel extends StatelessWidget {
  final String label;
  const RemindPasswordLabel({
    super.key,
    required this.label,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const RemindPasswordScreen()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 10),
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
