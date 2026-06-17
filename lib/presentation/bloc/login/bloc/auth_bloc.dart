import 'package:alphaxtestapp/core/failures/auth/auth_failure.dart';
import 'package:alphaxtestapp/core/failures/auth/value_objects.dart';
import 'package:alphaxtestapp/data/models/login_response/login_response.dart';
import 'package:alphaxtestapp/domain/repositories/authRepositoy/i_auth_facade.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;
  AuthBloc(this._authFacade) : super(AuthState.initial()) {
    on<UsernameChanged>((event, emit) {
      emit(state.copyWith(username: Username(event.usernameStr), authFailureOrSuccessOption: none()));
    });
    on<Passwordchanged>((event, emit) {
      emit(state.copyWith(password: Password(event.passwordStr), authFailureOrSuccessOption: none()));
    });
    on<Loginwithusernameandpw>((event, emit) async {
      Either<AuthFailure, LoginResponse> failureOrSuccess;
      if (state.username!.isValid() && state.password!.isValid()) {
        emit(state.copyWith(isSubmitting: true, authFailureOrSuccessOption: none(), isloginsuccess: false,gottootpscreen:false));
        failureOrSuccess = await _authFacade.signInWithUsernameAndPassword(username: state.username!,password: state.password!);

        emit(failureOrSuccess.fold((failure) => state.copyWith(isSubmitting: false, authFailureOrSuccessOption: some(left(failure)), loginResponsedata: LoginResponse(), isloginsuccess: false,gottootpscreen:false), (success) => state.copyWith(isSubmitting: false, authFailureOrSuccessOption: some(right(success)), loginResponsedata: success, isloginsuccess: true, gottootpscreen:true)));
        print("hello ${state.loginResponsedata}");
        emit(state.copyWith(isSubmitting: false,gottootpscreen:false ));
      }
      emit(state.copyWith(isSubmitting: false, showErrorMessages: true, gottootpscreen:false ));
    });
    on<Returncount>(
      (event, emit) {
        emit(state.copyWith(count: (state.count!) - 1));
      },
    );
    on<Setcountvalue>(
      (event, emit) {
        emit(state.copyWith(count: 60));
      },
    );
    on<OncompleteOTP>(
      (event, emit) {
        emit(state.copyWith(codeOTP: event.otpalue, oneditingotp: false));
      },
    );
     on<OneditingOTP>(
      (event, emit) {
        emit(state.copyWith(
          codeOTP: event.otpalue,
        ));
      },
    );

  }
}
