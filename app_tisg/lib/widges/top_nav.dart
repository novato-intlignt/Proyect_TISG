import 'package:app_tisg/constants/style.dart';
import 'package:app_tisg/helpers/responsiveness.dart';
import 'package:app_tisg/widges/custom_text.dart';

import 'package:flutter/material.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 14),
                  child: Image.asset(
                    "assets/icons/logo.png",
                    width: 28,
                  ),
                )
              ],
            )
          : IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                key.currentState!.openDrawer();
              }),
      title: Row(
        children: [
          Visibility(
              child: CustomText(
                  text: "UniquePay",
                  color: light,
                  size: 20,
                  weight: FontWeight.bold)),
          Expanded(child: Container()),
          IconButton(
            icon: Icon(
              Icons.settings,
              color: light.withOpacity(.7),
            ),
            onPressed: () {},
          ),
          Stack(
            children: [
              IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color: light.withOpacity(.7),
                  ),
                  onPressed: () {}),
              Positioned(
                top: 7,
                right: 7,
                child: Container(
                  width: 12,
                  height: 12,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: active,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: black, width: 2)),
                ),
              )
            ],
          ),
          Container(
            width: 1,
            height: 22,
            color: lightGrey,
          ),
          const SizedBox(
            width: 24,
          ),
          CustomText(
            text: "Cubyto",
            color: lightGrey,
          ),
          const SizedBox(
            width: 15,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(30)),
            child: Container(
              padding: const EdgeInsets.all(2),
              margin: const EdgeInsets.all(2),
              child: CircleAvatar(
                backgroundColor: black,
                child: Icon(
                  Icons.person_outline,
                  color: light,
                ),
              ),
            ),
          ),
        ],
      ),
      iconTheme: IconThemeData(color: light),
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
