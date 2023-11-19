import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
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
                offset: const Offset(0, -50),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(120, 150, 87, 82),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 300,
                  width: 320,
                  child: Column(
                    children: [TextFormField()],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
