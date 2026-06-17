import 'dart:async';

import 'package:alphaxtestapp/presentation/bloc/login/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Countdown {
  void startCountDown(BuildContext context) {
    BlocProvider.of<AuthBloc>(context).add(const AuthEvent.setcountvalue());
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (timer.tick > 60) {
        timer.cancel();
      } else {
        BlocProvider.of<AuthBloc>(context).add(const AuthEvent.returncount());
      }
    });
  }
}

