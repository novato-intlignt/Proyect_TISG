// ignore_for_file: unnecessary_new, prefer_const_constructors
import 'package:app_tisg/pages/clientpage.dart';
import 'package:app_tisg/pages/powerpage.dart';
import 'package:flutter/material.dart';

void main() => runApp(const LoginApp());

String username;

class LoginApp extends StatelessWidget {
  const LoginApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter + Mysql',
      home: LoginApp(),
      routes: <String, WidgetBuilder>{
        '/powerpage': (BuildContext context) => new Power(),
        '/clientpage': (BuildContext context) => new Clientes(),
      },
    );
  }
}
