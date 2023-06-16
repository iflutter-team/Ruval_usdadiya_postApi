import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import 'home_controller.dart';

AppBar homeAppBar() {
  return AppBar(
    title: const Text(
      "Get_Api",
    ),
    centerTitle: true,
  );
}

Widget productList() {
  return GetBuilder<HomeController>(
    id: "prodect",
    builder: (controller) {
      return controller.productlist?.products != null
          ? GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 3,
                crossAxisSpacing: 3,
              ),
              itemCount: controller.productlist?.products?.length,
              itemBuilder: (context, index) => Card(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(controller
                                .productlist!.products![index].thumbnail!),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      controller.productlist!.products![index].title.toString(),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            )
          : const Center(child: CircularProgressIndicator());
    },
  );
}
