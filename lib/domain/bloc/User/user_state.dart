part of 'user_bloc.dart';

enum UserStatus { logged, notLogged, incorrectPassword, incorrectUsername }

@immutable
class UserState extends Equatable {
  final String name;
  final String password;
  final String username;
  final String email;
  final UserStatus status;

  const UserState(
      {this.name = '',
      this.status = UserStatus.notLogged,
      this.password = '',
      this.username = '',
      this.email = ''});

  UserState copyWith(
      {String? name,
      String? password,
      String? username,
      String? email,
      UserStatus? status}) {
    return UserState(
        name: name ?? this.name,
        password: password ?? this.password,
        username: username ?? this.username,
        status: status ?? this.status,
        email: email ?? this.email);
  }

  @override
  List<Object?> get props => [name, password, username, email, status];
}
