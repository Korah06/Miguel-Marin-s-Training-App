import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:miguel_marin_training/firebase_options.dart';
import 'dart:developer' as developer;

class InitConfigurations {
  Future<void> setInitConfig() async {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    await dotenv.load(fileName: ".env");

    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      developer.log('User: ${user?.email}', name: 'init_functionality.dart');
      if (user == null) {
        developer.log('User is currently signed out!', name: 'Authentication');
      } else {
        developer.log('User: ${user.email} is currently signed in!',
            name: 'Authentication');
      }
    });
  }
}
