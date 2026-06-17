import 'package:alphaxtestapp/core/services/connectivityinfo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

class NetworkController extends GetxController {

  @override
  void dispose() {
    
    super.dispose();

    InternetConnection().onStatusChange
        .listen(_updateConnectionStatus)
        .cancel();
  }

  @override
  void onInit() {
    super.onInit();
    InternetConnection().onStatusChange.listen(_updateConnectionStatus);
  }
  

  Future<void> _updateConnectionStatus(InternetStatus status) async {

    switch (status) {
      case InternetStatus.connected:
        sharedPrefs.connectionstatus = "true";
        
       

        print("get............. internet....");
        if (Get.isSnackbarOpen) {
          Get.closeCurrentSnackbar();
      
        }
        break;
      case InternetStatus.disconnected:
    
        print("no............. internet....");
        sharedPrefs.connectionstatus = "false";
        
        Get.rawSnackbar(
          messageText: const Text(
            'PLEASE CONNECT TO THE INTERNET',
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          isDismissible: false,
          duration: const Duration(days: 1),
          backgroundColor: Colors.orange,
          icon: const Icon(Icons.wifi_off, color: Colors.white, size: 35),
          margin: EdgeInsets.zero,
          snackStyle: SnackStyle.GROUNDED,
        );
        break;
    }
  }
}
