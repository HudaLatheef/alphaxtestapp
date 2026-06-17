import 'package:injectable/injectable.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'itoken.dart';

@LazySingleton(as: itoken)
class TokenManager implements itoken {
  late SharedPreferences? prefs;
  //late BuildContext context;

  init() async {
    prefs = await SharedPreferences.getInstance();
  }

  @override
  Future<void> setaccessToken(String accesstoken) async {
    prefs = await SharedPreferences.getInstance();
    prefs!.setString('accesstoken', accesstoken);
  }

  @override
  Future<String> getaccessToken() async {
    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String accesstoken = sharedPreferences.getString('accesstoken').toString();
    // print("${token}- token from get string shared preference");
    return accesstoken;
  }

  @override
  Future<void> deleteaccessToken() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.remove('accesstoken');
  }
}
