import 'package:flutter/material.dart';

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
        style: const TextStyle(
          color: Color.fromARGB(227, 225, 226, 255),
        ),
        decoration: InputDecoration(
          border: const UnderlineInputBorder(),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(227, 225, 226, 255),
            ),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(227, 225, 226, 255),
            ),
          ),
          labelText: label,
          labelStyle: const TextStyle(
            color: Color.fromARGB(227, 225, 226, 255),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          prefixIcon: Icon(
            icon,
            color: const Color.fromARGB(227, 225, 226, 255),
          ),
        ),
      ),
    );
  }
}
