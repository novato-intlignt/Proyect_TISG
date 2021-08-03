import 'package:flutter/material.dart';

class LargeScreem extends StatelessWidget {
  const LargeScreem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
          color: Colors.teal[900],
        )),
        Expanded(flex: 5, child: Container(color: Colors.blueGrey[900]))
      ],
    );
  }
}
