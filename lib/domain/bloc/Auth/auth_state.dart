part of 'auth_bloc.dart';

class AuthState extends Equatable {
  final String email;
  final String password;
  final String credential;
  final String error;

  const AuthState(
      {this.credential = '',
      this.error = '',
      this.password = '',
      this.email = ''});

  AuthState copyWith(
      {String? email, String? password, String? credential, String? error}) {
    return AuthState(
        email: email ?? this.email,
        password: password ?? this.password,
        error: error ?? this.error,
        credential: credential ?? this.credential);
  }

  @override
  List<Object> get props => [email, password, credential];
}
