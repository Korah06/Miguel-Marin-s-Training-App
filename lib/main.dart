import 'package:flutter/material.dart';
import 'package:miguel_marin_training/domain/func/init_functionality.dart';
import 'package:miguel_marin_training/ui/LoginScreen/login_screen.dart';

// import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  InitConfigurations().setInitConfig();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Miguel Marin Training',
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: const LoginScreen(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.blue,
          useMaterial3: true,
        ));
  }
}
