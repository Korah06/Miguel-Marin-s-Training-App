part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class AuthEventLoad extends AuthEvent {}

class AuthEventLogin extends AuthEvent {}

class AuthEventTakePassword extends AuthEvent {
  final String password;

  const AuthEventTakePassword(this.password);

  @override
  List<Object> get props => [password];
}

class AuthEventTakeEmail extends AuthEvent {
  final String email;

  const AuthEventTakeEmail(this.email);

  @override
  List<Object> get props => [email];
}
