import 'package:flutter/material.dart';
import 'package:miguel_marin_training/ui/theme/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginErrorPopUp extends StatelessWidget {
  final String label;
  const LoginErrorPopUp({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    final translator = AppLocalizations.of(context)!;
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
