part of 'auth_bloc.dart';

enum AuthStatus {
  loading,
  loaded,
  error,
  noEmail,
  noPassword,
  noDate,
  incorrectEmailFormat,
  incorrectPasswordFormat,
  unknownError,
  invalidUserPassword,
  userNotFound
}

class AuthState extends Equatable {
  final String email;
  final String? credential;
  final UserTr? user;
  final bool isValidated;
  final String error;
  final AuthStatus status;

  const AuthState(
      {this.credential,
      this.user,
      this.isValidated = true,
      this.status = AuthStatus.loaded,
      this.error = '',
      this.email = ''});

  AuthState copyWith(
      {String? email,
      String? password,
      String? credential,
      bool? isValidated,
      UserTr? user,
      String? error,
      AuthStatus? status}) {
    return AuthState(
        isValidated: isValidated ?? this.isValidated,
        email: email ?? this.email,
        user: user ?? this.user,
        status: status ?? this.status,
        error: error ?? this.error,
        credential: credential ?? this.credential);
  }

  @override
  List<Object?> get props =>
      [email, credential, status, isValidated, error, user];
}
