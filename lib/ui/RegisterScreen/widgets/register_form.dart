import 'package:flutter/material.dart';
import 'package:miguel_marin_training/ui/theme/colors.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final translator = AppLocalizations.of(context);

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
            child: Hero(tag: 'logo', child: Image.asset('assets/logo.png')),
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
              height: 365,
              width: 340,
              child: Column(
                children: [
                  ElevatedButton(
                      onPressed: () {}, child: const Text("Register"))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
