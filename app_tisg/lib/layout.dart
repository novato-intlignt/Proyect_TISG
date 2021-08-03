import 'package:app_tisg/helpers/responsiveness.dart';
import 'package:app_tisg/widgets/large_screem.dart';
import 'package:app_tisg/widgets/small_screen.dart';
import 'package:app_tisg/widgets/top_nav.dart';
import 'package:flutter/material.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: topNavigationBar(context, scaffoldKey),
        drawer: Drawer(),
        body: const ResponsiveWidget(
            largeScreen: LargeScreem(), smallScreen: SmallScreen()));
  }
}
