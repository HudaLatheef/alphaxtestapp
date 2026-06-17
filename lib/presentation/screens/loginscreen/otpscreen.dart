import 'package:alphaxtestapp/core/services/connectivityinfo.dart';
import 'package:alphaxtestapp/core/services/countdown.dart';

import 'package:alphaxtestapp/presentation/bloc/login/bloc/auth_bloc.dart';
import 'package:alphaxtestapp/presentation/screens/Homescreen/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:sms_autofill/sms_autofill.dart';

class Otpdialog {
  showAlertDialog(BuildContext context) {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
          content: Alertcontent(context),
        );
      },
    );
  }
}

class Alertcontent extends StatefulWidget {
  const Alertcontent(BuildContext context, {super.key});

  @override
  State<Alertcontent> createState() => _AlertcontentState();
}

class _AlertcontentState extends State<Alertcontent> {
  TextEditingController? otpController;
  String? appSignature;

  @override
  @override
  initState() {
    super.initState();

    Countdown().startCountDown(context);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (contextbuilder, state) {},
      child: WillPopScope(
        onWillPop: () async => false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Expanded(child: SizedBox()),
                      const Icon(Icons.password),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.of(context, rootNavigator: true).pop('dialog');
                              },
                              icon: Icon(Icons.close, color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "OTP confirmation",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.sp, color: const Color(0xff172B4D)),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    "We have sent an OTP code. Please enter below",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12.sp, color: const Color(0xff7A869A)),
                  ),
                ],
              ),
            ),
            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(6.sp),
                      child: PinFieldAutoFill(
                        autoFocus: true,
                        keyboardType: const TextInputType.numberWithOptions(),
                        controller: otpController,
                        decoration: UnderlineDecoration(
                          textStyle: const TextStyle(fontSize: 20, color: Colors.black),
                          colorBuilder: const FixedColorBuilder(Colors.green),
                        ),
                        onCodeSubmitted: (code) {
                          BlocProvider.of<AuthBloc>(context).add(AuthEvent.oncompleteOTP(code));
                          if (code.length == 6) {
                            FocusScope.of(context).unfocus();
                          }
                        },
                        currentCode: state.codeOTP,
                        onCodeChanged: (code) {
                          BlocProvider.of<AuthBloc>(context).add(AuthEvent.oneditingotp(code));
                          if (code!.length == 6) {
                            FocusScope.of(context).requestFocus(FocusNode());
                          }
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: state.oneditingotp == true
                            ? const Text('Please enter OTP')
                            : state.codeOTP!.length == 6
                            ? Text(
                                'Your code: ${state.codeOTP}',
                                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                              )
                            : const Text('Please enter OTP'),
                      ),
                    ),
                    if (state.count.toString() == "0")
                      Text(
                        "Code expired",
                        style: TextStyle(color: Colors.red, fontSize: 12.sp),
                      )
                    else
                      Text(
                        "Your code expires in ${state.count.toString()} seconds",
                        style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                      ),
                    state.codeOTP.toString() == "000000" && state.codeOTP!.length == 6
                        ? Padding(
                            padding: EdgeInsets.only(top: 10.h),
                            child: const Text('Entered OTP is incorrect'),
                          )
                        : const SizedBox(),
                    // state.codeOTP!.length == 6 && state.codeOTP.toString() != "000000" ? const Text('Verifying...') : const SizedBox(),
                  ],
                );
              },
            ),
            const SizedBox(height: 15),
            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 100.w,
                      child: OutlinedButton(
                        onPressed: () {
                          sharedPrefs.connectstatus == "true"
                              ? {
                                  // Navigator.of(context, rootNavigator: true).pop('dialog');
                                  if (state.count.toString() == "0") {Countdown().startCountDown(context)},
                                }
                              : null;
                        },
                        style: ButtonStyle(
                          backgroundColor: const WidgetStatePropertyAll(Colors.grey),
                          side: WidgetStateProperty.all(const BorderSide(color: Colors.transparent, width: 1)),
                        ),
                        child: state.isloadingresentotp == true
                            ? const SpinKitThreeBounce(color: Colors.grey, size: 20)
                            : Text(
                                "RESEND OTP",
                                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12.sp, color: Colors.white),
                              ),
                      ),
                    ),
                    BlocBuilder<AuthBloc, AuthState>(
                      builder: (context, state) {
                        return SizedBox(
                          width: 100.w,
                          child: OutlinedButton(
                            onPressed: () async {
                              sharedPrefs.connectstatus == "true"
                                  ? {
                                      if (state.codeOTP!.length == 6 && state.codeOTP.toString() != "000000")
                                        {
                                          Navigator.of(context).pop(),
                                          Navigator.of(context, rootNavigator: true).push(
                                            CupertinoPageRoute<bool>(
                                              //fullscreenDialog: true,
                                              settings: const RouteSettings(name: "Homepage"),
                                              builder: (BuildContext context) => Homepage(),
                                            ),
                                          ),
                                        }
                                      else
                                        {null},
                                    }
                                  : null;
                            },
                            style: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(Colors.grey),
                              side: WidgetStateProperty.all(const BorderSide(color: Colors.transparent, width: 1)),
                            ),
                            child: state.isacceptotploading == true
                                ? const SpinKitThreeBounce(color: Colors.white, size: 20)
                                : Text(
                                    "SUBMIT",
                                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12.sp, color: Colors.white),
                                  ),
                          ),
                        );
                      },
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
