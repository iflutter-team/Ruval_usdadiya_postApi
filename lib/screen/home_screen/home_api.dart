// ignore_for_file: avoid_print

import 'package:http/http.dart' as http;

import '../../model/model.dart';
import '../../service/http_api_service.dart';
import '../../utils/endpiont_res.dart';

class HomeApi {
  static Future getAllData() async {
    try {
      http.Response? response =
          await HttpService.getApi(url: EndPointRes.productAPI);
      if (response != null && response.statusCode == 200) {
        print(response.body);
        return productListFromJson(response.body);
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
}
