import 'package:flutter/material.dart';
import 'package:miguel_marin_training/ui/theme/colors.dart';

class LoginTextFormField extends StatelessWidget {
  final String label;
  final IconData? icon;
  const LoginTextFormField({
    super.key,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: TextFormField(
        maxLines: 1,
        style: TextStyle(
          color: ColorsScheme().pink,
        ),
        cursorColor: ColorsScheme().pink,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(0),
          border: const UnderlineInputBorder(),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: ColorsScheme().pink,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: ColorsScheme().pink,
            ),
          ),
          labelText: label,
          labelStyle: TextStyle(
            color: ColorsScheme().pink,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          prefixIcon: Icon(
            size: 15,
            icon,
            color: ColorsScheme().pink,
          ),
        ),
      ),
    );
  }
}
