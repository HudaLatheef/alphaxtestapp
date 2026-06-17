


import 'package:alphaxtestapp/core/failures/auth/auth_failure.dart';
import 'package:alphaxtestapp/core/failures/auth/value_objects.dart';
import 'package:alphaxtestapp/data/models/login_response/login_response.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, LoginResponse>> signInWithUsernameAndPassword({
    @required Username username,
    @required Password password,
  });}