import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserState()) {
    on<UserLoginEvent>(_onLoginUserEvent);
  }

  FutureOr<void> _onLoginUserEvent(
      UserLoginEvent event, Emitter<UserState> emit) async {}
}
