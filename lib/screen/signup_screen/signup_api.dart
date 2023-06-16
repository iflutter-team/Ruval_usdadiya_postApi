import 'package:flutter/foundation.dart';
import 'package:post_api_calling_second_time/utils/endpiont_res.dart';
import 'package:http/http.dart' as http;

import '../../model/signup_model.dart';
import '../../service/http_api_service.dart';

class SignUpApi {
  static Future registerUser(Map<String, dynamic>? body) async {
    try {
      String url = EndPointRes.signUp;
      http.Response? response = await HttpService.postApi(
          url: url, body: body, header: {'Content-Type': 'application/json'});
      if (response != null && response.statusCode == 200) {
        return signUpModelFromJson(response.body);
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }
}
