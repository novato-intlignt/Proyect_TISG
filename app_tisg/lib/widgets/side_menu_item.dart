import 'package:app_tisg/helpers/responsiveness.dart';
import 'package:app_tisg/widgets/horizontal_menu_item.dart';
import 'package:app_tisg/widgets/vertical_menu_item.dart';
import 'package:flutter/material.dart';

class SideMenuItem extends StatelessWidget {
  final String? itemName;
  final Function? onTap;

  const SideMenuItem({Key? key, @required this.itemName, @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isCustomScreen(context)) {
      return VerticalMenuItem(
        itemName: itemName,
      );
    } else {
      return HorizontalMenuItem(
        itemName: itemName,
      );
    }
  }
}
