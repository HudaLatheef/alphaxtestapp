import 'package:alphaxtestapp/core/services/TokenManager.dart';
import 'package:alphaxtestapp/presentation/screens/loginscreen/loginscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkLogin();
    // Timer(const Duration(seconds: 3), () {
    //   Navigator.of(context, rootNavigator: true).push(
    //     CupertinoPageRoute<bool>(
    //       //fullscreenDialog: true,
    //       builder: (BuildContext context) => LoginScreen(),
    //     ),
    //   );
    // });
  }

  Future<void> _checkLogin() async {
    TokenManager tokenmanagr = TokenManager();
    String? token = await tokenmanagr.getaccessToken();
Timer(const Duration(seconds: 3), () {
    if (token.toString() == "null" || token.isEmpty) {
      print(token);

      Navigator.of(context, rootNavigator: true).push(
        CupertinoPageRoute<bool>(
          //fullscreenDialog: true,
          builder: (BuildContext context) => LoginScreen(),
        ),
      );
     
    } else {
      print(token);
        Navigator.pushReplacementNamed(context, 'Homepage');
    }});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Color(0xFF0F2027), Color(0xFF203A43), Color(0xFF2C5364)], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.15), shape: BoxShape.circle),
                child: const Icon(Icons.person, color: Colors.white, size: 70),
              ),

              const SizedBox(height: 30),
              const Text(
                "WELCOME",
                style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),

              const Text(
                "AlphaX Test App",
                style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 12),

              const Text("Secure Authentication & Profile", style: TextStyle(color: Colors.white70, fontSize: 16)),

              const SizedBox(height: 60),

              const SizedBox(width: 30, height: 30, child: CircularProgressIndicator(color: Colors.white, strokeWidth: 3)),
            ],
          ),
        ),
      ),
    );
  }
}
