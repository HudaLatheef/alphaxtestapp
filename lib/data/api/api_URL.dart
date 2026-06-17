import 'package:flutter/widgets.dart';

class URLConstants {
  static BuildContext? _context;

  static void setContext(BuildContext context) {
    _context = context;
  }

  static BuildContext? get context => _context;

  static String baseURL = "https://dummyjson.com";

  static String login = "$baseURL/auth/login";
}
