import 'package:alphaxtestapp/presentation/screens/splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';


Route? routes(RouteSettings settings) {
  if (settings.name == 'SplashScreen') {
    return MaterialPageRoute(
      builder: (context) {
        return SplashScreen();
      },
    );
  }
  //  else if (settings.name == 'Loginscreen') {
  //   return MaterialPageRoute(
  //     builder: (context) {
  //      return null
  //     },
  //   );
  // } 

  return null;
}
