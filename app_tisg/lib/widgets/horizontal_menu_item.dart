import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:app_tisg/constants/style.dart';
import 'package:app_tisg/widgets/custom_text.dart';
import 'package:app_tisg/constants/controlleres.dart';

class HorizontalMenuItem extends StatelessWidget {
  //final Function? onTap;

  const HorizontalMenuItem({Key? key, this.itemName}) : super(key: key);

  final String? itemName;

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return InkWell(
      //onTap: onTap,
      onHover: (value) {
        value
            ? menuController.onHover(itemName!)
            : menuController.onHover("not hover");
      },
      child: Obx(() => Container(
            color: menuController.isHovering(itemName!)
                ? lightGrey.withOpacity(.1)
                : Colors.transparent,
            child: Row(children: [
              Visibility(
                visible: menuController.isHovering(itemName!) ||
                    menuController.isActive(itemName!),
                child: Container(width: 6, height: 40, color: dark),
                maintainSize: true,
                maintainState: true,
                maintainAnimation: true,
              ),
              SizedBox(
                width: _width / 80,
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: menuController.returnIconFor(itemName!),
              ),
              if (!menuController.isActive(itemName!))
                Flexible(
                    child: CustomText(
                  text: itemName,
                  color:
                      menuController.isHovering(itemName!) ? dark : lightGrey,
                ))
              else
                Flexible(
                    child: CustomText(
                        text: itemName,
                        color: dark,
                        size: 18,
                        weight: FontWeight.bold))
            ]),
          )),
    );
  }
}
