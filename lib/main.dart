import 'package:flutter/material.dart';
import 'package:miguel_marin_training/ui/LoginScreen/login_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Miguel Marin Training',
        home: const LoginScreen(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.blue,
          useMaterial3: true,
        ));
  }
}
