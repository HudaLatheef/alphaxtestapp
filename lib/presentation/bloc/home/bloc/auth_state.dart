part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState({required bool? isloading}) = _AuthState;

  factory AuthState.initial() => AuthState(isloading: false);
}
