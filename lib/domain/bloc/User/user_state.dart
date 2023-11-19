part of 'user_bloc.dart';

enum UserStatus { logged, notLogged, incorrectPassword, incorrectUsername }

@immutable
class UserState extends Equatable {
  final String name;
  final String password;
  final String username;
  final String email;

  const UserState(
      {this.name = '',
      this.password = '',
      this.username = '',
      this.email = ''});

  UserState copyWith(
      {String? name, String? password, String? username, String? email}) {
    return UserState(
        name: name ?? this.name,
        password: password ?? this.password,
        username: username ?? this.username,
        email: email ?? this.email);
  }

  @override
  List<Object?> get props => [name, password, username, email];
}
