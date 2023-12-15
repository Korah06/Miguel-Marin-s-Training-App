import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:miguel_marin_training/domain/bloc/Auth/auth_bloc.dart';
import 'package:miguel_marin_training/ui/LoginScreen/services/validator_functions.dart';
import 'package:miguel_marin_training/ui/theme/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginTextFormField extends StatelessWidget {
  final String label;
  final IconData? icon;
  final TextEditingController controller;
  const LoginTextFormField({
    super.key,
    required this.label,
    required this.icon,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final translator = AppLocalizations.of(context)!;
    final authBloc = BlocProvider.of<AuthBloc>(context);

    return Padding(
      padding: const EdgeInsets.all(14),
      child: TextFormField(
        controller: controller,
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
        validator: (value) {
          if (value == null || value.isEmpty) {
            authBloc.add(const AuthEventChangeValidation(false));
            return translator.noEmail;
          }
          if (!isValidEmail(value)) {
            authBloc.add(const AuthEventChangeValidation(false));
            return translator.incorrectEmailFormat;
          }
          authBloc.add(const AuthEventChangeValidation(true));
          return null;
        },
      ),
    );
  }
}
