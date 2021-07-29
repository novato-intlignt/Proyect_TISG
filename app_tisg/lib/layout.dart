import 'package:flutter/material.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black87,
        ),
        body: Row(
          children: [
            Expanded(
                child: Container(
              color: Colors.red,
            )),
            Expanded(flex: 5, child: Container(color: Colors.blue))
          ],
        ));
  }
}
