import 'package:app_tisg/constants/style.dart';
import 'package:app_tisg/helpers/responsiveness.dart';
import 'package:app_tisg/routing/routes.dart';
import 'package:app_tisg/widgets/custom_text.dart';
import 'package:app_tisg/widgets/side_menu_item.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Container(
      color: light,
      child: ListView(
        children: [
          if(ResponsiveWidget.isSmallScreen(context))
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 40,),
              Row(
                children: [SizedBox(width: _width / 48),
                Padding(padding: const EdgeInsets.only(right: 12),
                child: Image.asset("assets/icons/logo.png"),
                ),
                Flexible(child: CustomText(
                  text: "UniquePay",
                  size: 20,
                  weight: FontWeight.bold,
                  color: active,
                )
                ),
                  
                  SizedBox(width: _width /48,)
                ],
              ),

              const SizedBox(height: 48,),

              Divider(color: lightGrey.withOpacity(.1),),

              Column(
                mainAxisSize: MainAxisSize.min, 
                children: sideMenuItemRoutes.map((itemName) => SideMenuItem(
                  itemName: itemName = AuthenticationPageRoute, 
                  onTap: (){
                    if(itemName == )
                  }
                  )).toList(),
              )
            ],
          )
        ],
      )

    );
  }
}