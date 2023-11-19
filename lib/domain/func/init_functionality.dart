import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InitConfigurations {
  void setInitConfig() {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }
}
