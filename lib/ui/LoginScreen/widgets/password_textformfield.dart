import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:miguel_marin_training/domain/bloc/Auth/auth_bloc.dart';
import 'package:miguel_marin_training/ui/theme/colors.dart';

class PasswordTextFormField extends StatefulWidget {
  final String label;
  final TextEditingController controller;
  final IconData? icon;
  const PasswordTextFormField({
    super.key,
    required this.label,
    required this.icon,
    required this.controller,
  });

  @override
  State<PasswordTextFormField> createState() => _PasswordTextFormFieldState();
}

class _PasswordTextFormFieldState extends State<PasswordTextFormField> {
  final textFieldFocusNode = FocusNode();
  bool _obscured = true;

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
      if (textFieldFocusNode.hasPrimaryFocus) return;
      textFieldFocusNode.canRequestFocus = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final authBloc = BlocProvider.of<AuthBloc>(context);
    return Padding(
      padding: const EdgeInsets.all(14),
      child: TextFormField(
        keyboardType: TextInputType.visiblePassword,
        obscureText: _obscured,
        focusNode: textFieldFocusNode,
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
          labelText: widget.label,
          labelStyle: TextStyle(
            color: ColorsScheme().pink,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          suffixIcon: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
            child: GestureDetector(
              onTap: _toggleObscured,
              child: Icon(
                color: ColorsScheme().pink,
                _obscured
                    ? Icons.visibility_off_rounded
                    : Icons.visibility_rounded,
                size: 24,
              ),
            ),
          ),
        ),
        onChanged: (value) => authBloc.add(AuthEventTakePassword(value)),
      ),
    );
  }
}
