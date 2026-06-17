part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.usernameChanged(usernameStr) = UsernameChanged;
  const factory AuthEvent.passwordchanged(passwordStr) = Passwordchanged;
  const factory AuthEvent.loginwithusernameandpw() = Loginwithusernameandpw;
  const factory AuthEvent.setcountvalue() = Setcountvalue;
  const factory AuthEvent.returncount() = Returncount;
  const factory AuthEvent.oncompleteOTP(otpalue) = OncompleteOTP;
  const factory AuthEvent.oneditingotp(otpalue) = OneditingOTP;
   const factory AuthEvent.clearbloc() = Clearbloc;
}
