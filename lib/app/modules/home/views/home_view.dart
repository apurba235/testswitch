import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testapp2/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: 'Hall'),
              Tab(text: 'Dining'),
              Tab(text: 'Bathrooms'),
              Tab(text: 'Bedroom'),
            ],
          ),
          body: TabBarView(
            children: List.generate(4, (index) {
              return Column(
                children: [
                  Expanded(
                    child: GridView.builder(
                        itemCount: controller.allItems.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          return Card(
                            child: Column(
                              children: [
                                Text('${controller.allItems[index].title}'),
                                Text('${controller.allItems[index].subTitle}'),
                                Switch(
                                    value: controller.clickedItems.value
                                        .contains(controller.allItems[index]),
                                    onChanged: (value) {
                                      if (value) {
                                        controller.clickedItems.value = [
                                          ...controller.clickedItems.value,
                                          controller.allItems[index]
                                        ];
                                      } else {
                                        controller.clickedItems.value
                                            .remove(controller.allItems[index]);
                                      }
                                      setState(() {});
                                    })
                              ],
                            ),
                          );
                        }),
                  ),
                  TextButton(
                      onPressed: () {
                        Get.toNamed(Routes.ANOTHER);
                      },
                      child: Text('Submit'))
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
