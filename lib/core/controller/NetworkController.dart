import 'package:alphaxtestapp/core/services/connectivityinfo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';



class NetworkController extends GetxController {
  // final Connectivity _connectivity = Connectivity();
  // ConnectivityBloc bloc = ConnectivityBloc();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    InternetConnection()
        .onStatusChange
        .listen(_updateConnectionStatus)
        .cancel();
  }

  @override
  void onInit() {
    super.onInit();
    InternetConnection().onStatusChange.listen(_updateConnectionStatus);
  }
  // final listener =
  //     InternetConnection().onStatusChange.listen((InternetStatus status) {

  // });
  // void _updateConnectionStatus(List<ConnectivityResult> cr) {
  //   // print("hhhhhhhhh...................${cr.first.name}");
  //   if (cr.contains(ConnectivityResult.none)) {
  //     print("no........... internet....");
  //     // BlocProvider.of<PaymentsBloc>(Get.context as BuildContext)
  //     //     .add(const PaymentsEvent.payclearbloc());
  //     // BlocProvider.of<BillPaymentBloc>(Get.context as BuildContext)
  //     //     .add(const BillPaymentEvent.billpaymentclearbloc());
  //     Get.rawSnackbar(
  //         messageText: const Text('PLEASE CONNECT TO THE INTERNET',
  //             style: TextStyle(color: Colors.white, fontSize: 14)),
  //         isDismissible: false,
  //         duration: const Duration(days: 1),
  //         backgroundColor: Colors.red[400]!,
  //         icon: const Icon(
  //           Icons.wifi_off,
  //           color: Colors.white,
  //           size: 35,
  //         ),
  //         margin: EdgeInsets.zero,
  //         snackStyle: SnackStyle.GROUNDED);
  //   } else {
  //     print("get............. internet....");
  //     if (Get.isSnackbarOpen) {
  //       Get.closeCurrentSnackbar();
  //     }
  //   }
  // }

  Future<void> _updateConnectionStatus(InternetStatus status) async {
    //  SharedPreferences prefs = await SharedPreferences.getInstance();

    switch (status) {
      case InternetStatus.connected:
        sharedPrefs.connectionstatus = "true";
        //  prefs.setString("internetstatus", "yes");
        // BlocProvider.of<ConnectivityBloc>(Get.context as BuildContext)
        //     .add(const ConnectivityEvent.setconnectivitystatus(true));
        // bloc.add(const ConnectivityEvent.setconnectivitystatus(true));
        //CredentialManager().saveconnectiitystatus("connectivity", "true");
        // getIt<ConnectivityBloc>().add(
        //   const ConnectivityEvent.setconnectivitystatus(true),
        // );
        // Get.context!
        //     .read<ConnectivityBloc>()
        //     .add(const ConnectivityEvent.setconnectivitystatus(true));
        // TokenManager().setconnectivitystatus("true");

        print("get............. internet....");
        if (Get.isSnackbarOpen) {
          Get.closeCurrentSnackbar();
          //sharedPrefs.connectionstatus = "true";
          //Tokenexpiry().setconnection(Get.context!, "true");
        }
        break;
      case InternetStatus.disconnected:
        // prefs.setString("internetstatus", "no");
        print("no............. internet....");
        //TokenManager().setconnectivitystatus("false");
        sharedPrefs.connectionstatus = "false";
        // bloc.add(const ConnectivityEvent.setconnectivitystatus(false));
        // Get.context!
        //     .read<ConnectivityBloc>()
        //     .add(const ConnectivityEvent.setconnectivitystatus(false));
        Get.rawSnackbar(
            messageText: const Text('PLEASE CONNECT TO THE INTERNET',
                style: TextStyle(color: Colors.white, fontSize: 14)),
            isDismissible: false,
            duration: const Duration(days: 1),
            backgroundColor: Colors.orange,
            icon: const Icon(
              Icons.wifi_off,
              color: Colors.white,
              size: 35,
            ),
            margin: EdgeInsets.zero,
            snackStyle: SnackStyle.GROUNDED);
        break;
    }
  }
}
