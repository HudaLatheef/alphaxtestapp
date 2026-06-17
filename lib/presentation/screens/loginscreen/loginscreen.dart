import 'package:alphaxtestapp/presentation/bloc/login/bloc/auth_bloc.dart';
import 'package:alphaxtestapp/presentation/screens/loginscreen/otpscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.gottootpscreen == true) {
            Otpdialog().showAlertDialog(context);
          }
        },
        child: GestureDetector(
          child: Scaffold(
            body: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [Color(0xFF0F2027), Color(0xFF203A43), Color(0xFF2C5364)], begin: Alignment.topLeft, end: Alignment.bottomRight),
              ),
              child: Center(
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(20.w),
                  child: Container(
                    width: 1.sw, // responsive full width limit
                    padding: EdgeInsets.all(22.w),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.08),
                      borderRadius: BorderRadius.circular(20.r),
                      border: Border.all(color: Colors.white.withValues(alpha: 0.15)),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Icon
                        Container(
                          padding: EdgeInsets.all(14.w),
                          decoration: BoxDecoration(color: const Color(0xFF00C853).withValues(alpha: 0.15), shape: BoxShape.circle),
                          child: Icon(Icons.lock_outline, color: const Color(0xFF00C853), size: 34.sp),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          "ALPHAX",
                          style: TextStyle(fontSize: 28.sp, fontWeight: FontWeight.bold, letterSpacing: 2, color: const Color(0xFF00C853)),
                        ),

                        SizedBox(height: 15.h),

                        Text(
                          "Welcome Back",
                          style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold, color: Colors.white),
                        ),

                        SizedBox(height: 5.h),

                        Text(
                          "Login to continue",
                          style: TextStyle(fontSize: 14.sp, color: Colors.white70),
                        ),

                        SizedBox(height: 25.h),

                        // Username
                        BlocBuilder<AuthBloc, AuthState>(
                          builder: (context, state) {
                            return TextFormField(
                              readOnly: false,
                           keyboardType:TextInputType.emailAddress,
                              style: TextStyle(color: Colors.white, fontSize: 14.sp),
                              autocorrect: false,
                              obscureText: false,
                              textInputAction: TextInputAction.next,
                              onTapOutside: (event) {
                                FocusScope.of(context).requestFocus(FocusNode());
                              },
                              onChanged: (value) => context.read<AuthBloc>().add(AuthEvent.usernameChanged(value)),
                              validator: (_) => state.username!.value.fold<String?>((f) => f.maybeMap<String?>(empty: (_) => 'Username Required', orElse: () => null), (_) => null),
                              autovalidateMode: state.showErrorMessages == true ? AutovalidateMode.always : AutovalidateMode.disabled,
                              decoration: InputDecoration(
                                labelText: "Username",
                                labelStyle: TextStyle(color: Colors.white70, fontSize: 13.sp),
                                prefixIcon: Icon(Icons.person, color: Colors.white70, size: 20.sp),
                                filled: true,
                                fillColor: Colors.white.withValues(alpha: 0.08),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.r), borderSide: BorderSide.none),
                              ),
                            );
                          },
                        ),

                        SizedBox(height: 15.h),

                        // Password
                        BlocBuilder<AuthBloc, AuthState>(
                          builder: (context, state) {
                            return TextFormField(
                              autocorrect: false,
                                 readOnly: false,
                              textInputAction: TextInputAction.done,
                              obscureText: true,
                              onTapOutside: (event) {
                                FocusScope.of(context).requestFocus(FocusNode());
                              },
                              onChanged: (value) => context.read<AuthBloc>().add(AuthEvent.passwordchanged(value)),
                              validator: (_) => state.password!.value.fold<String?>((f) => f.maybeMap<String?>(empty: (_) => 'Password Required', shortPassword: (_) => 'Password must be atleast 6 characters', orElse: () => null), (_) => null),
                              autovalidateMode: state.showErrorMessages == true ? AutovalidateMode.always : AutovalidateMode.disabled,
                              style: TextStyle(color: Colors.white, fontSize: 14.sp),
                              decoration: InputDecoration(
                                labelText: "Password",
                                labelStyle: TextStyle(color: Colors.white70, fontSize: 13.sp),
                                prefixIcon: Icon(Icons.lock, color: Colors.white70, size: 20.sp),
                                filled: true,
                                fillColor: Colors.white.withValues(alpha: 0.08),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.r), borderSide: BorderSide.none),
                              ),
                            );
                          },
                        ),

                        SizedBox(height: 10.h),

                        BlocBuilder<AuthBloc, AuthState>(
                          builder: (context, state) {
                            return state.isloginsuccess == false && state.isSubmitting == false && state.authFailureOrSuccessOption!.isSome()
                                ? Text(
                                    "Invalid Credential",
                                    style: TextStyle(color: Colors.red, fontSize: 15.sp),
                                  )
                                : SizedBox();
                          },
                        ),
                        SizedBox(height: 10.h),
                        // Forgot Password
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(color: const Color(0xFF00C853), fontWeight: FontWeight.w600, fontSize: 13.sp),
                            ),
                          ),
                        ),

                        SizedBox(height: 10.h),

                        // Login Button
                        BlocBuilder<AuthBloc, AuthState>(
                          builder: (context, state) {
                            return SizedBox(
                              width: double.infinity,
                              height: 50.h,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF00C853),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
                                ),
                                onPressed: () {
                                  BlocProvider.of<AuthBloc>(context).add(const AuthEvent.loginwithusernameandpw());
                                },
                                child: state.isSubmitting == true
                                    ? CircularProgressIndicator(color: Colors.white)
                                    : Text(
                                        "Login",
                                        style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                                      ),
                              ),
                            );
                          },
                        ),

                        SizedBox(height: 18.h),

                        // Sign up
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account? ",
                              style: TextStyle(color: Colors.white70, fontSize: 13.sp),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                "Sign Up",
                                style: TextStyle(color: const Color(0xFF00C853), fontWeight: FontWeight.bold, fontSize: 13.sp),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
