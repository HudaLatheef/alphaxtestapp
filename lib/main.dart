import 'package:alphaxtestapp/core/controller/NetworkController.dart';
import 'package:alphaxtestapp/core/di/injectable.dart';
import 'package:alphaxtestapp/core/services/connectivityinfo.dart';
import 'package:alphaxtestapp/core/util/colors.dart';
import 'package:alphaxtestapp/core/util/routes.dart';
import 'package:alphaxtestapp/presentation/bloc/login/bloc/auth_bloc.dart';
import 'package:alphaxtestapp/presentation/screens/splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await sharedPrefs.init();
  await configureInjection();
  Get.put(NetworkController(), permanent: true);
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctxauth) => getIt<AuthBloc>()),

        // BlocProvider(
        //   create: (ctxauth) =>
        //       getIt<AuthBloc>()..add(const AuthEvent.appstarted()),
        // ),
      ],
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          // state.userfailuresorsuccessoption.fold(
          //   () {},
          //   (either) => either.fold(
          //     (failure) {
          //       failure.map(
          //           invalidtoken: (_) => {
          //                 BlocProvider.of<AuthBloc>(context)
          //                     .add(const AuthEvent.setTokenExpireStatus(true)),
          //               },
          //           cancelledByUser: (_) => '',
          //           serverError: (_) => 'Server Error',
          //           invalidCredentials: (_) => "invalidcredential");
          //     },
          //     (_) {
          //       BlocProvider.of<AuthBloc>(context)
          //           .add(const AuthEvent.setTokenExpireStatus(false));
          //     },
          //   ),
          // );
        },
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844), // iPhone 13/14 size reference
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'AlphaX Test App',
          onGenerateRoute: routes,
          theme: ThemeData(
            useMaterial3: false,
            pageTransitionsTheme: const PageTransitionsTheme(
              builders: {
                TargetPlatform.android: CupertinoPageTransitionsBuilder(),
                TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
              },
            ),
            textTheme: GoogleFonts.dmSansTextTheme(),
            primaryColor: ConstantColors.primaryGreen,
          ),
          home: const SplashScreen(),
        );
      },
    );
  }
}
