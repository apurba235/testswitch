import 'package:get/get.dart';

class SwitchModel {
  late String title;
  late String subTitle;
  SwitchModel({required this.title, required this.subTitle});
}

class HomeController extends GetxController {
  //TODO: Implement HomeController

  Rx<List<SwitchModel>> clickedItems = Rx<List<SwitchModel>>([]);
  List<SwitchModel> allItems = [
    SwitchModel(title: 'one', subTitle: 'one subtitle'),
    SwitchModel(title: 'two', subTitle: 'two subtitle'),
    SwitchModel(title: 'three', subTitle: 'three subtitle'),
    SwitchModel(title: 'four', subTitle: 'four subtitle'),
    SwitchModel(title: 'five', subTitle: 'five subtitle'),
    SwitchModel(title: 'six', subTitle: 'six subtitle'),
    SwitchModel(title: 'seven', subTitle: 'seven subtitle'),
  ];

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
