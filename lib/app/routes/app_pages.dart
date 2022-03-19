import 'package:get/get.dart';

import 'package:testapp2/app/modules/another/bindings/another_binding.dart';
import 'package:testapp2/app/modules/another/views/another_view.dart';
import 'package:testapp2/app/modules/home/bindings/home_binding.dart';
import 'package:testapp2/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ANOTHER,
      page: () => AnotherView(),
      binding: AnotherBinding(),
    ),
  ];
}
