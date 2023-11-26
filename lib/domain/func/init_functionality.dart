import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class InitConfigurations {
  void setInitConfig() async {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    await dotenv.load(fileName: ".env");

    await Supabase.initialize(
      url: dotenv.env['CONNECTION_URL']!,
      anonKey: dotenv.env['CONNECTION_KEY']!,
    );
  }
}
