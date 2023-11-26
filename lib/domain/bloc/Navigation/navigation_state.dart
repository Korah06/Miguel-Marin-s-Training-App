part of 'navigation_bloc.dart';

enum NavigationStatus { home, login, register, remindPassword }

@immutable
class NavigationState extends Equatable {
  final NavigationStatus status;
  const NavigationState({this.status = NavigationStatus.login});

  NavigationState copyWith({NavigationStatus? status}) {
    return NavigationState(status: status ?? this.status);
  }

  @override
  List<Object> get props => [status];
}
