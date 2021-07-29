import 'package:flutter/material.dart';

class LargeScreem extends StatelessWidget {
  const LargeScreem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
          color: Colors.red,
        )),
        Expanded(flex: 5, child: Container(color: Colors.blue))
      ],
    );
  }
}
