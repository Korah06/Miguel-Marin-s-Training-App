import 'package:flutter/material.dart';
import 'package:miguel_marin_training/ui/LoginScreen/widgets/login_text_form_field.dart';
import 'package:miguel_marin_training/ui/theme/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'login_button.dart';
import 'login_checkbox.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final translator = AppLocalizations.of(context);

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color.fromRGBO(234, 233, 233, 1),
            Color.fromRGBO(180, 172, 180, 1),
            Color.fromRGBO(153, 73, 73, 1),
            Color.fromRGBO(43, 43, 43, 1)
          ],
        ),
      ),
      child: Column(
        children: [
          Center(
            child: Image.asset('assets/logo.png'),
          ),
          Transform.translate(
            offset: const Offset(0, -80),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
                color: ColorsScheme().darkRed,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 320,
              width: 320,
              child: Column(
                children: [
                  LoginTextFormField(
                    label: translator!.userLabel,
                    icon: Icons.person,
                  ),
                  LoginTextFormField(
                      label: translator.passwordLabel, icon: Icons.lock),
                  LoginCheckbox(
                    label: translator.remindPasswordLabel,
                  ),
                  LoginButton(label: translator.loginButton),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
