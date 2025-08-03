import 'package:flutter/material.dart';
import 'package:untitled/Utils/colors.dart';
import 'package:untitled/View/Auth/login_screen.dart';
import 'package:untitled/View/Vender_Verification_Screens/add_item_screen.dart';
import 'package:untitled/root_screen.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
       debugShowCheckedModeBanner: false,
       theme: ThemeData(
        scaffoldBackgroundColor: AppColor.themeColor,),
      home:const LoginScreen(),
    );
  }
}