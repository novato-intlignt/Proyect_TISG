// ignore_for_file: unused_import, unnecessary_new, prefer_const_constructors
import 'package:flutter/material.dart';

class Power extends StatelessWidget {
  const Power({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Power page'),
      ),
      body: new Column(
        children: <Widget>[
          new Text('Estamos en Powerpage'),
        ],
      ),
    );
  }
}
