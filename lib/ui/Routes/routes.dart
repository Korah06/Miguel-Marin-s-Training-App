import 'package:miguel_marin_training/domain/bloc/Auth/auth_bloc.dart';
import 'package:miguel_marin_training/ui/LoginScreen/login_screen.dart';
import 'package:miguel_marin_training/ui/RegisterScreen/register_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Routes {
  static const String home = '/home';
  static const String login = '/login';
  static const String register = '/register';
  static const String splash = '/splash';

  static get routes => {
        login: (context) => BlocProvider(
              create: (_) => AuthBloc()..add(AuthEventLoad()),
              child: const LoginScreen(),
            ),
        register: (context) => const RegisterScreen(),
      };
}
