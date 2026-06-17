import 'package:alphaxtestapp/core/failures/auth/auth_failure.dart';
import 'package:alphaxtestapp/core/failures/auth/value_objects.dart';
import 'package:alphaxtestapp/core/services/TokenManager.dart';
import 'package:alphaxtestapp/core/services/local_secure_storage.dart';
import 'package:alphaxtestapp/data/api/api_URL.dart';
import 'package:alphaxtestapp/data/models/login_response/login_response.dart';
import 'package:alphaxtestapp/domain/repositories/authRepositoy/i_auth_facade.dart';
import 'package:alphaxtestapp/presentation/bloc/login/bloc/auth_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthFacade)
@Injectable(as: AuthBloc)
class AuthFacade implements IAuthFacade {
  TokenManager tokenmanagr = TokenManager();
  var response;
  @override
  Future<Either<AuthFailure, LoginResponse>> signInWithUsernameAndPassword({
    Username? username,
    Password? password,
  }) async {
    final usernameStr = username!.getOrCrash().toString();
    final passwordStr = password!.getOrCrash().toString();
    print(usernameStr);
    print(passwordStr);
    try {
      final response = await Dio(BaseOptions(headers: {})).post(
        URLConstants.login,
        data: {
          'username': usernameStr,
          'password': passwordStr,
          'expiresInMins': 30,
        },
      );
      print("'username': $usernameStr,'password': $passwordStr");
      print(response);
      print(response.statusCode.toString());

      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = response.data;

        var dataresult = data['accessToken'].toString();

        tokenmanagr.setaccessToken(dataresult);

        LoginResponse loginresponsedata = LoginResponse.fromJson(data);
        saveUser(loginresponsedata);

        return right(loginresponsedata);
      } else if (response.statusCode == 400 || response.statusCode == 401) {
        print("invaalid crd...{}.");
        return const Left(AuthFailure.invalidCredentials());
      }
    } catch (e) {
      if (e is DioException && e.response?.statusCode == 400) {
        print("e.responsecode...${e.response!.data['message'].toString()}");
        return const Left(AuthFailure.invalidCredentials());
      } else {
        return const Left(AuthFailure.cancelledByUser());
      }
    }

    throw UnimplementedError();
  }
}
