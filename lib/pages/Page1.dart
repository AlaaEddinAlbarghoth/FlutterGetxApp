import 'package:flutter/material.dart';
import 'package:getx_test_app/pages/Page2.dart';
import 'package:getx_test_app/pages/Page3.dart';
import '../widgets/custom_button.dart';
import 'package:get/get.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page One'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                Get.back(); // MaybePop
              },
            ),
          ],
        ),
      ),
    );
  }
}
