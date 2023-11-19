part of 'user_bloc.dart';

@immutable
abstract class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object?> get props => [];
}

class UserLoginEvent extends UserEvent {
  final String username;
  final String password;

  const UserLoginEvent({required this.username, required this.password});

  @override
  List<Object?> get props => [username, password];
}

class UserLogout extends UserEvent {}

class UserRegisterEvent extends UserEvent {
  final String name;
  final String username;
  final String password;
  final String email;

  const UserRegisterEvent(
      {required this.name,
      required this.username,
      required this.password,
      required this.email});

  @override
  List<Object?> get props => [name, username, password, email];
}

class UserUpdateEvent extends UserEvent {
  final String name;
  final String username;
  final String password;
  final String email;

  const UserUpdateEvent(
      {required this.name,
      required this.username,
      required this.password,
      required this.email});

  @override
  List<Object?> get props => [name, username, password, email];
}

class UserDeleteEvent extends UserEvent {}
