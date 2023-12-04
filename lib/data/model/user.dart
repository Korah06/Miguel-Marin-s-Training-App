import 'package:equatable/equatable.dart';
import 'package:miguel_marin_training/data/model/user_weight.dart';

class User extends Equatable {
  final String id;
  final String email;
  final String firstName;
  final String lastName;
  final double height;
  final double pendingBalance;
  final List<UserWeight> weights;

  const User(
      {required this.id,
      required this.email,
      required this.weights,
      required this.firstName,
      required this.lastName,
      required this.height,
      required this.pendingBalance});

  @override
  List<Object?> get props =>
      [email, firstName, lastName, height, pendingBalance, weights];
}
