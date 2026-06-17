import 'package:alphaxtestapp/core/failures/main_failure.dart';
import 'package:alphaxtestapp/core/services/TokenManager.dart';
import 'package:alphaxtestapp/data/api/api_URL.dart';
import 'package:alphaxtestapp/data/models/profiledata/profiledata.dart';
import 'package:alphaxtestapp/domain/repositories/profileRepository/i_profile_facade.dart';
import 'package:alphaxtestapp/presentation/bloc/profile/bloc/profile_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';


@LazySingleton(as: IProfileFacade)
@Injectable(as: ProfileBloc)
class ProfileFacade implements IProfileFacade {
  TokenManager tokenmanagr = TokenManager();

  @override
  Future<Either<MainFailure, Profiledata>> getprofiledata() async {
    String? token = await tokenmanagr.getaccessToken();
    try {
      final response = await Dio(BaseOptions(headers: {'Authorization': 'Bearer $token'})).get(URLConstants.getprofiledata);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = response.data;

        Profiledata pdata = Profiledata.fromJson(data);
print(pdata);
        return right(pdata);
      } else if (response.statusCode == 401) {
        return const Left(MainFailure.serverFailure());
      } else {
        return const Left(MainFailure.serverFailureelse());
      }
    } catch (e) {
      if (e is DioException && e.response?.statusCode == 401) {
        //const AuthEvent.setTokenExpireStatus(true);
        //  print("e.responsecode...${e.response!.data['error'].toString()}");
        // Get.offAll(SignInForm());
        return const Left(MainFailure.serverFailure());
      } else {
        return const Left(MainFailure.serverFailureelse());
        //throw ("error....401....}");
      }
    }
  }
}
