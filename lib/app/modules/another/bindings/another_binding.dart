import 'package:get/get.dart';

import '../controllers/another_controller.dart';

class AnotherBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AnotherController>(
      () => AnotherController(),
    );
  }
}
