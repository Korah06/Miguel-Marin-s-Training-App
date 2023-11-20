import 'package:flutter/material.dart';
import 'package:miguel_marin_training/ui/theme/colors.dart';

class LoginCheckbox extends StatelessWidget {
  final String label;
  const LoginCheckbox({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          checkColor: ColorsScheme().pink,
          value: true,
          onChanged: null,
        ),
        Text(
          label,
          style: TextStyle(color: ColorsScheme().pink),
        )
      ],
    );
  }
}
