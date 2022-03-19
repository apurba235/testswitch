import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testapp2/app/modules/home/controllers/home_controller.dart';

import '../controllers/another_controller.dart';

class AnotherView extends GetView<AnotherController> {
  final controllerUsed = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    var len = controllerUsed.clickedItems.value.length;
    return Scaffold(
      appBar: AppBar(
        title: Text('AnotherView'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: len,
          itemBuilder: (context, index) {
            return Card(
              child: Column(
                children: [
                  Text('${controllerUsed.clickedItems.value[index].title}'),
                  Text('${controllerUsed.clickedItems.value[index].title}'),
                ],
              ),
            );
          }),
    );
  }
}
