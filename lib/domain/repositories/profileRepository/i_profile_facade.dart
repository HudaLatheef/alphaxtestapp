import 'package:alphaxtestapp/core/failures/main_failure.dart';
import 'package:alphaxtestapp/data/models/profiledata/profiledata.dart';
import 'package:dartz/dartz.dart';

abstract class IProfileFacade {
  Future<Either<MainFailure, Profiledata>> getprofiledata();
}
