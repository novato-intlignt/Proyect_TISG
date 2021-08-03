import 'package:app_tisg/constants/style.dart';
import 'package:app_tisg/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = overviewPageDisplayName.obs;
  var hoverItem = "".obs;

  changeActiveItemTO(String itenName) {
    if (!isActive(itenName)) hoverItem.value = itenName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isActive(String itenName) => activeItem.value == itenName;

  isHovering(String itenName) => hoverItem.value == itenName;

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case pedidosPageRoute:
        return _customIcon(Icons.shopping_cart, itemName);
      case clientesPageRoute:
        return _customIcon(Icons.people_alt_outlined, itemName);
      case campanasPageRoute:
        return _customIcon(Icons.calendar_today, itemName);
      case estadisticaPageRoute:
        return _customIcon(Icons.trending_up, itemName);
      case consultorasPageRoute:
        return _customIcon(Icons.group_add_outlined, itemName);
      case nostrosPageRoute:
        return _customIcon(Icons.group_add_rounded, itemName);
      case authenticationPageRoute:
        return _customIcon(Icons.exit_to_app, itemName);
      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName)) {
      return Icon(
        icon,
        size: 22,
        color: dark,
      );
    }

    return Icon(icon, color: isHovering(itemName) ? dark : lightGrey);
  }
}
