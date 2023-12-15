import 'package:flutter/material.dart';
import 'package:miguel_marin_training/ui/theme/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginErrorPopUp extends StatelessWidget {
  final String error;
  const LoginErrorPopUp({
    super.key,
    required this.error,
  });

  @override
  Widget build(BuildContext context) {
    final String label;
    final translator = AppLocalizations.of(context)!;
    if (error == 'user-not-found') {
      label = translator.userNotFound;
    } else if (error == 'wrong-password') {
      label = translator.invalidUserPassword;
    } else if (error == 'invalid-credential') {
      label = translator.invalidCredentialError;
    } else {
      label = error;
    }

    return AlertDialog(
      backgroundColor: ColorsScheme().primaryRed,
      title: Center(
        child: Text(label, style: TextStyle(color: ColorsScheme().pink)),
      ),
      actions: [
        TextButton(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(50.0),
            backgroundColor:
                MaterialStateProperty.all(ColorsScheme().secondaryRed),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            translator.ok,
            style: TextStyle(color: ColorsScheme().pink),
          ),
        )
      ],
    );
  }
}
