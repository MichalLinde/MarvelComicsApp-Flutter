import 'dart:convert';

import 'package:crypto/crypto.dart';

class ConstantsApi {
  static const String baseUrl = "https://gateway.marvel.com/v1/public/";
  static String timeStamp = DateTime.now().millisecondsSinceEpoch.toString();
  static const String apiKey = "8e6eaff2babc82d749bb7e1f5586a85a";
  static const String privateKey = "6ca43e1e43e8696e0d09bc35ccb20593c6ffc715";

  static String hash() {
    String input = "$timeStamp$privateKey$apiKey";
    return md5.convert(utf8.encode(input)).toString();
  }
}