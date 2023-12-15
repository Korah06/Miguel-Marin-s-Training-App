import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:miguel_marin_training/data/model/user.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState()) {
    on<AuthEventLoad>(_onAuthEventLoad);
    on<AuthEventLogin>(_onAuthEventLogin);
    on<AuthEventTakeDate>(_onAuthEventTakeDate);
    on<AuthEventChangeValidation>(_onAuthEventChangeValidation);
  }
  _onAuthEventLogin(AuthEventLogin event, Emitter<AuthState> emit) async {
    final String email = event.email;
    final String password = event.password;
    try {
      emit(state.copyWith(status: AuthStatus.loading, email: email));

      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      emit(state.copyWith(
          credential: credential.user!.uid, status: AuthStatus.loaded));
    } on FirebaseException catch (e) {
      if (e.code == 'user-not-found') {
        emit(state.copyWith(error: e.code, status: AuthStatus.error));
        emit(state.copyWith(status: AuthStatus.loaded));
      } else if (e.code == 'wrong-password') {
        emit(state.copyWith(error: e.code, status: AuthStatus.error));
        emit(state.copyWith(status: AuthStatus.loaded));
      } else if (e.code == 'invalid-credential') {
        emit(state.copyWith(error: e.code, status: AuthStatus.error));
        emit(state.copyWith(status: AuthStatus.loaded));
      } else {
        emit(state.copyWith(
            error: "Unexpected server error: ${e.code}",
            status: AuthStatus.error));
        emit(state.copyWith(status: AuthStatus.loaded));
      }
    } catch (e) {
      emit(
          state.copyWith(error: e.toString(), status: AuthStatus.unknownError));
    }
  }

  _onAuthEventLoad(AuthEventLoad event, Emitter<AuthState> emit) {
    emit(state.copyWith(status: AuthStatus.loaded));
  }

  _onAuthEventTakeDate(AuthEventTakeDate event, Emitter<AuthState> emit) {
    UserTr user = state.user!;
    user = user.copyWith(birthday: event.date);
    emit(state.copyWith(user: user));
  }

  _onAuthEventChangeValidation(
      AuthEventChangeValidation event, Emitter<AuthState> emit) {
    emit(state.copyWith(isValidated: event.validate));
  }
}
