import 'package:app_tisg/Values/ResponsiveApp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late ResponsiveApp responsiveApp;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Good Unique",
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        responsiveApp = ResponsiveApp(context);
        return Theme(
            data: ThemeData(
              backgroundColor: Colors.blueGrey[900],
              primaryColor: Colors.black87,
              colorScheme: ColorScheme.fromSwatch(accentColor: Colors.blueGrey),
              iconTheme: const IconThemeData(color: Colors.white),
              cardColor: Colors.white,
              primaryTextTheme: getTextTheme(),
              textTheme: getTextTheme(),
              indicatorColor: Colors.white,
              unselectedWidgetColor: Colors.blueGrey[300],
              tabBarTheme: TabBarTheme(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.blueGrey[300],
              ),
              accentTextTheme: TextTheme(
                  headline6: TextStyle(
                      color: Colors.blueGrey[300],
                      fontSize: responsiveApp.headline6),
                  bodyText1: TextStyle(
                      color: Colors.blueGrey[100],
                      fontSize: responsiveApp.bodyText1),
                  bodyText2: TextStyle(
                      color: Colors.blueGrey[300],
                      fontSize: responsiveApp.bodyText1)),
            ),
            child: HomePage());
      },
    );
  }

  getTextTheme() {
    return TextTheme(
      headline3:
          TextStyle(color: Colors.white, fontSize: responsiveApp.headline3),
      headline6:
          TextStyle(color: Colors.white, fontSize: responsiveApp.headline6),
      bodyText1:
          TextStyle(color: Colors.black, fontSize: responsiveApp.bodyText1),
      bodyText2:
          TextStyle(color: Colors.white, fontSize: responsiveApp.bodyText1),
      headline2:
          TextStyle(color: Colors.white, fontSize: responsiveApp.headline2),
    );
  }
}
