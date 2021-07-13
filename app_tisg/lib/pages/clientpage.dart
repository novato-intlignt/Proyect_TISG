// ignore_for_file: unused_import, unnecessary_new, prefer_const_constructors
import 'package:flutter/material.dart';

class Clientes extends StatelessWidget {
  const Clientes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Pagina de clientes'),
      ),
      body: new Column(
        children: <Widget>[
          new Text('Estamos en clientes'),
        ],
      ),
    );
  }
}
