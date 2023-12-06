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
    on<AuthEventTakeEmail>(_onAuthEventTakeEmail);
    on<AuthEventTakePassword>(_onAuthEventTakePassword);
    on<AuthEventTakeDate>(_onAuthEventTakeDate);
  }
  bool isValidEmail(String email) {
    final emailRegex =
        RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$");
    return emailRegex.hasMatch(email);
  }

  bool isValidPassword(String password) {
    final passwordRegex =
        RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$');
    return passwordRegex.hasMatch(password);
  }

  _onAuthEventLogin(AuthEventLogin event, Emitter<AuthState> emit) async {
    try {
      emit(state.copyWith(status: AuthStatus.loading));
      if (state.email == "" || state.email.isEmpty) {
        emit(state.copyWith(status: AuthStatus.noEmail));
        emit(state.copyWith(status: AuthStatus.loaded));
        return;
      }
      if (!isValidEmail(state.email)) {
        emit(state.copyWith(status: AuthStatus.incorrectEmailFormat));
        emit(state.copyWith(status: AuthStatus.loaded));
        return;
      }
      if (state.password.isEmpty || state.password == "") {
        emit(state.copyWith(status: AuthStatus.noPassword));
        emit(state.copyWith(status: AuthStatus.loaded));
        return;
      }
      if (!isValidPassword(state.password)) {
        emit(state.copyWith(status: AuthStatus.incorrectPasswordFormat));
        emit(state.copyWith(status: AuthStatus.loaded));
        return;
      }

      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: state.email, password: state.password);

      emit(state.copyWith(
          credential: credential.user!.uid, status: AuthStatus.loaded));
    } on FirebaseException catch (e) {
      if (e.code == 'user-not-found') {
        emit(state.copyWith(error: 'No user found for that email.'));
      } else if (e.code == 'wrong-password') {
        emit(state.copyWith(error: 'Wrong password provided for that user.'));
      }
    } catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }

  _onAuthEventTakeEmail(
      AuthEventTakeEmail event, Emitter<AuthState> emit) async {
    emit(state.copyWith(email: event.email));
  }

  _onAuthEventTakePassword(
      AuthEventTakePassword event, Emitter<AuthState> emit) async {
    emit(state.copyWith(password: event.password));
  }

  _onAuthEventLoad(AuthEventLoad event, Emitter<AuthState> emit) {
    emit(state.copyWith(status: AuthStatus.loaded));
  }

  _onAuthEventTakeDate(AuthEventTakeDate event, Emitter<AuthState> emit) {
    UserTr user = state.user!;
    user = user.copyWith(birthday: event.date);
    emit(state.copyWith(user: user));
  }
}
