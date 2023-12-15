import 'package:equatable/equatable.dart';
import 'package:miguel_marin_training/data/model/user_weight.dart';

class UserTr extends Equatable {
  final String id;
  final String email;
  final String firstName;
  final String lastName;
  final double height;
  final DateTime birthday;
  final double pendingBalance;
  final List<UserWeight> weights;

  const UserTr(
      {required this.id,
      required this.birthday,
      required this.email,
      required this.weights,
      required this.firstName,
      required this.lastName,
      required this.height,
      required this.pendingBalance});

  UserTr copyWith(
      {String? id,
      String? email,
      String? firstName,
      String? lastName,
      double? height,
      DateTime? birthday,
      double? pendingBalance,
      List<UserWeight>? weights}) {
    return UserTr(
        id: id ?? this.id,
        email: email ?? this.email,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        height: height ?? this.height,
        birthday: birthday ?? this.birthday,
        pendingBalance: pendingBalance ?? this.pendingBalance,
        weights: weights ?? this.weights);
  }

  @override
  List<Object?> get props =>
      [email, firstName, lastName, height, pendingBalance, weights];
}
