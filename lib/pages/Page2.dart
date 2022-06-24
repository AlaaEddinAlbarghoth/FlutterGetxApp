import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test_app/pages/Page1.dart';
import 'package:getx_test_app/pages/Page3.dart';

import '../widgets/custom_button.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Two'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              title: 'Page One',
              onPress: () {
                Get.to(const Page1());
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
                Get.back(); // MaybePop
              },
            ),
          ],
        ),
      ),
    );
  }
}
