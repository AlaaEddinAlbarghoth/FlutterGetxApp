import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test_app/pages/Page1.dart';
import 'package:getx_test_app/pages/Page2.dart';
import 'package:getx_test_app/pages/Page3.dart';
import 'package:getx_test_app/widgets/custom_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Test App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.white,
      ),
      home: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              title: 'Page One',
              onPress: () {
                // Get.off(const Page1()); // This made a replacement for the top most page
                Get.to(const Page1());
              },
            ),
            CustomButton(
              title: 'Page Two',
              onPress: () {
                Get.to(const Page2());
              },
            ),
            CustomButton(
              title: 'Page Three',
              onPress: () {
                Get.to(const Page3());
              },
            ),
            CustomButton(
              title: 'Back',
              onPress: () {
                Get.back(); // Maybe Pop. in case no activities in bg it'll not do any thing
              },
            ),
          ],
        ),
      ),
    );
  }
}
