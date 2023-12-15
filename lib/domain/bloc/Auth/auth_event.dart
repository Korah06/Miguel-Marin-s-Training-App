part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class AuthEventLoad extends AuthEvent {}

class AuthEventChangeValidation extends AuthEvent {
  final bool validate;

  const AuthEventChangeValidation(this.validate);

  @override
  List<Object> get props => [validate];
}

class AuthEventLogin extends AuthEvent {
  final String email;
  final String password;
  const AuthEventLogin({required this.email, required this.password});

  @override
  List<Object> get props => [email, password];
}

class AuthEventTakeDate extends AuthEvent {
  final DateTime date;

  const AuthEventTakeDate(this.date);

  @override
  List<Object> get props => [date];
}
