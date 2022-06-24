import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function onPress;

  const CustomButton({super.key, required this.title, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
        color: Colors.red,
        textColor: Colors.white,
        onPressed: () {
          onPress.call();
        },
        child: Text(title),
      ),
    );
  }
}
