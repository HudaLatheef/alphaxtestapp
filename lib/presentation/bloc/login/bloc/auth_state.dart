part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState({
   required bool? isloading,
   @required Username? username,
   @required Option<Either<AuthFailure, LoginResponse>>? authFailureOrSuccessOption,
   @required bool? showErrorMessages,
    @required Password? password,
    required bool? isSubmitting, 
    required LoginResponse? loginResponsedata,
    required bool? isloginsuccess,
    required bool? gottootpscreen,
     required int? count,
      required String? codeOTP,
          required bool? oneditingotp,
          required bool? isloadingresentotp,
          required bool isacceptotploading

   
    }) = _AuthState;

  factory AuthState.initial() => AuthState(
   isloading: false, 
   gottootpscreen:false,
   username: Username(''),
   count:60,
   authFailureOrSuccessOption: none(),
   showErrorMessages: false,
    password: Password(''),
    isSubmitting:false,
    loginResponsedata:LoginResponse(),
    isloginsuccess:false,
      codeOTP: '',
      oneditingotp:false,
      isloadingresentotp:false,
      isacceptotploading:false
   );
}
