import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test_app/pages/Page1.dart';
import 'package:getx_test_app/pages/Page2.dart';

import '../widgets/custom_button.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Three'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              title: 'Page One - OfAll',
              onPress: () {
                Get.offAll(const Page1()); // Clear + Replacement
              },
            ),
            CustomButton(
              title: 'Page Two - Off',
              onPress: () {
                Get.off(const Page2()); // Replacement
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
