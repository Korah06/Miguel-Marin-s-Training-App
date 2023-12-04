import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState()) {
    on<AuthEventLoad>(_onAuthEventLoad);
    on<AuthEventLogin>(_onAuthEventLogin);
    on<AuthEventTakeEmail>(_onAuthEventTakeEmail);
    on<AuthEventTakePassword>(_onAuthEventTakePassword);
  }

  _onAuthEventLogin(AuthEventLogin event, Emitter<AuthState> emit) async {
    // try {
    //   final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    //       email: state.email, password: state.password);
    //   emit(state.copyWith(credential: credential.user!.uid));
    // } on FirebaseException catch (e) {
    //   if (e.code == 'user-not-found') {
    //     emit(state.copyWith(error: 'No user found for that email.'));
    //   } else if (e.code == 'wrong-password') {
    //     emit(state.copyWith(error: 'Wrong password provided for that user.'));
    //   }
    // } catch (e) {
    //   emit(state.copyWith(error: e.toString()));
    // }

    print(state.email);
    print(state.password);
  }

  _onAuthEventTakeEmail(
      AuthEventTakeEmail event, Emitter<AuthState> emit) async {
    emit(state.copyWith(email: event.email));
  }

  _onAuthEventTakePassword(
      AuthEventTakePassword event, Emitter<AuthState> emit) async {
    emit(state.copyWith(password: event.password));
  }

  _onAuthEventLoad(AuthEventLoad event, Emitter<AuthState> emit) {}
}
