import 'package:flutter/foundation.dart';
import '../../service/http_api_service.dart';
import '../../utils/endpiont_res.dart';
import 'package:http/http.dart' as http;

class LoginApi {
  static Future loginUser(Map<String, dynamic>? body) async {
    try {
      String url = EndPointRes.login;
      http.Response? response = await HttpService.postLoginApi(
          url: url, body: body, header: {'Content-Type': 'application/json'});
      if (response != null && response.statusCode == 200) {
        if (kDebugMode) {
          print(response.body);
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }
}
