import 'package:alphaxtestapp/core/services/TokenManager.dart';
import 'package:alphaxtestapp/core/services/local_secure_storage.dart';
import 'package:alphaxtestapp/core/util/colors.dart';
import 'package:alphaxtestapp/presentation/bloc/login/bloc/auth_bloc.dart';
import 'package:alphaxtestapp/presentation/bloc/profile/bloc/profile_bloc.dart';
import 'package:alphaxtestapp/presentation/screens/loginscreen/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AppExitDialog {
  showAlertDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      backgroundColor: Color(0xFF0F2027),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12.r))),
      content: WillPopScope(
        onWillPop: () async => false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Icon(Icons.logout, color: Colors.red, size: 50),
            const SizedBox(height: 20),
            Center(
              child: Text(
                "Are you sure you want to Logout ?",
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSans(fontSize: 16.sp, color: Colors.white),
              ),
            ),

            Center(
              child: Text(
                "",
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSans(fontSize: 16.sp),
              ),
            ),
            const SizedBox(height: 5),

            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.012),
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.of(context, rootNavigator: true).pop('dialog');
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(ConstantColors.primaryGreen),
                      side: WidgetStateProperty.all(const BorderSide(color: Colors.transparent, width: 2)),
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.r))),
                    ),
                    child: SizedBox(
                      width: 65.w,
                      child: Text(
                        "GO BACK",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.dmSans(fontWeight: FontWeight.w500, fontSize: 14.sp, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.012),
                  child: OutlinedButton(
                    onPressed: () async {
                      await clearAll();
                      await deleteUser();
                      Navigator.of(context).pop();
                      BlocProvider.of<AuthBloc>(context).add(AuthEvent.clearbloc());
                       BlocProvider.of<ProfileBloc>(context).add(ProfileEvent.clearbloc());
                         await logout();
                   Get.offAll(() => const LoginScreen());
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(ConstantColors.primaryGreen),
                      side: WidgetStateProperty.all(const BorderSide(color: Colors.transparent, width: 2)),
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.r))),
                    ),
                    child: SizedBox(
                      width: 65.w,
                      child: Text(
                        textAlign: TextAlign.center,
                        "YES",
                        style: GoogleFonts.dmSans(fontWeight: FontWeight.w500, fontSize: 14.sp, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );

    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
