import 'package:flutter/material.dart';
import 'package:miguel_marin_training/domain/func/init_functionality.dart';

// import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:miguel_marin_training/ui/Routes/routes.dart';
import 'package:miguel_marin_training/ui/theme/colors.dart';

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
        // home: const LoginScreen(),
        initialRoute: Routes.login,
        routes: Routes.routes,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: ColorsScheme().primaryRed,
          textSelectionTheme: TextSelectionThemeData(
            cursorColor: ColorsScheme().pink,
            selectionColor: ColorsScheme().pink,
            selectionHandleColor: ColorsScheme().pink,
          ),
          useMaterial3: true,
        ));
  }
}
