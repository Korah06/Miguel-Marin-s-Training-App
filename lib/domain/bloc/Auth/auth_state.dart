part of 'auth_bloc.dart';

enum AuthStatus {
  loading,
  loaded,
  noEmail,
  noPassword,
  noDate,
  incorrectEmailFormat,
  incorrectPasswordFormat
}

class AuthState extends Equatable {
  final String email;
  final String password;
  final String credential;
  final UserTr? user;
  final String error;
  final AuthStatus status;

  const AuthState(
      {this.credential = '',
      this.user,
      this.status = AuthStatus.loading,
      this.error = '',
      this.password = '',
      this.email = ''});

  AuthState copyWith(
      {String? email,
      String? password,
      String? credential,
      UserTr? user,
      String? error,
      AuthStatus? status}) {
    return AuthState(
        email: email ?? this.email,
        user: user ?? this.user,
        password: password ?? this.password,
        status: status ?? this.status,
        error: error ?? this.error,
        credential: credential ?? this.credential);
  }

  @override
  List<Object?> get props => [email, password, credential, status, error, user];
}
