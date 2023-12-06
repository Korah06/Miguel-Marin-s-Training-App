import 'package:equatable/equatable.dart';

class UserWeight extends Equatable {
  final String id;
  final double weight;
  final DateTime date;

  const UserWeight(
      {required this.id, required this.weight, required this.date});

  @override
  List<Object?> get props => [id, weight, date];
}
