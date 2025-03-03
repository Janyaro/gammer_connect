import 'package:flutter/material.dart';
import 'package:untitled/Utils/text_utils.dart';

class DrawerComponent extends StatelessWidget {
  final  IconData icondata;
  final String iconName;
  final VoidCallback onTap;
  const DrawerComponent({super.key, required this.icondata, required this.iconName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  ListTile(
              onTap: onTap,
              leading: Icon(icondata , size: 30,color: Colors.white,),
              title: Text(iconName , style: TextUtils.body18,),
            );
  }
}