import 'package:get/get.dart';

import '../../model/model.dart';
import 'home_api.dart';

class HomeController extends GetxController {
  ProductList? productlist;

  @override
  void onInit() {
    getImageList();
    super.onInit();
  }

  Future<void> getImageList() async {
    // imageList = await HomeApi.getData();
    // imageList ?? [];
    // update(["Data"]);
    productlist = await HomeApi.getAllData();
    update(["prodect"]);
  }
}
