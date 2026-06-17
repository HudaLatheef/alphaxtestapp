import 'package:alphaxtestapp/presentation/screens/Homescreen/homepage.dart';
import 'package:alphaxtestapp/presentation/screens/loginscreen/loginscreen.dart';
import 'package:alphaxtestapp/presentation/screens/profilescreen/profilepage.dart';
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
   else if (settings.name == 'Loginscreen') {
    return MaterialPageRoute(
      builder: (context) {
       return LoginScreen();
      },
    );
  }
  else if (settings.name == 'Homepage') {
    return MaterialPageRoute(
      builder: (context) {
       return Homepage();
      },
    );
  }
  else if (settings.name == 'ProfileSummary') {
    return MaterialPageRoute(
      builder: (context) {
       return ProfileSummary();
      },
    );
  }
  

  return null;
}
