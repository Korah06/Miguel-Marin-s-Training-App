import 'dart:ui';

import 'package:equatable/equatable.dart';

class ColorsScheme extends Equatable {
  final Color primaryRed = const Color.fromARGB(255, 155, 71, 71);
  final Color secondaryRed = const Color.fromARGB(255, 150, 82, 87);
  final Color darkRed = const Color.fromARGB(120, 150, 87, 82);
  final Color pink = const Color.fromARGB(227, 225, 226, 255);
  final Color gray = const Color.fromARGB(255, 73, 73, 73);
  final Color black = const Color.fromARGB(255, 17, 17, 17);
  final Color white = const Color.fromARGB(255, 238, 237, 236);

  @override
  List<Object?> get props =>
      [primaryRed, secondaryRed, darkRed, pink, gray, black, white];
}
