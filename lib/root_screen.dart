
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:untitled/Components/drawer_component.dart';
import 'package:untitled/Components/reuse_btn.dart';
import 'package:untitled/Utils/colors.dart';
import 'package:untitled/Utils/text_utils.dart';
import 'package:untitled/View/home_screen.dart';
import 'package:untitled/View/new_screen.dart';
import 'package:untitled/View/profile.screen.dart';
import 'package:untitled/View/question_screen.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  final SearchController = TextEditingController();
      FlutterCarouselController buttonCarouselController = FlutterCarouselController();
      int _currentIndex=0;
      void _onItemTapped(int index){
        setState(() {
          _currentIndex = index;
        });
      }

    final List<Widget> _screen = [
      HomeScreen(),
      NewsScreen(),
      QuestionScreen(),
      ProfileScreen()
    ];
    final List<String> title = [
      'Gammer Connect',
      'ChatScreen',
      'Question Screen',
      'Profile Screen'
    ];
  @override 
  Widget build(BuildContext context) {
 final media = MediaQuery.of(context).size;
    return  SafeArea(
      child:  Scaffold(
        bottomNavigationBar: Container(
          decoration:const BoxDecoration(
    border: Border(
      top: BorderSide(
        color: Colors.grey,
         ),
    ),
  ),
          child: BottomNavigationBar(
            backgroundColor: AppColor.btnColor,
            onTap: _onItemTapped,
          items:  [
             BottomNavigationBarItem(icon: const Icon(Icons.home), label: 'Home', backgroundColor: AppColor.themeColor),
             BottomNavigationBarItem(icon:const Icon(Icons.chat), label: 'Search' , backgroundColor: AppColor.themeColor),
             BottomNavigationBarItem(icon:const Icon(Icons.question_answer), label: 'Questions' , backgroundColor: AppColor.themeColor),
             BottomNavigationBarItem(icon:const Icon(Icons.person), label: 'Profile',backgroundColor: AppColor.themeColor),
          ],
          currentIndex: _currentIndex,
          selectedItemColor: AppColor.whiteColor,
          unselectedItemColor: Colors.grey,
          unselectedLabelStyle: const TextStyle(color:Colors.grey),
          
                ),
        ),
          drawerScrimColor: Colors.white,
          
       drawer: Drawer(
  backgroundColor: AppColor.themeColor,
  child: Column(
    children: [
     const SizedBox(
        width: double.infinity,  // Ensure full width
        child:  DrawerHeader(
          decoration: BoxDecoration(color: Colors.blue),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 30,
                child: Text('1'),
              ),
              SizedBox(height: 10),
              Text(
                "User Name",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                "user@example.com",
                style: TextStyle(color: Colors.white70),
              ),
            ],
          ),
        ),
      ),

      Expanded(
        child: ListView(
          children: [
            DrawerComponent(onTap: () {}, icondata: Icons.home, iconName: 'Home'),
            DrawerComponent(onTap: () {}, icondata: Icons.home, iconName: 'News'),
            DrawerComponent(onTap: () {}, icondata: Icons.question_answer, iconName: 'Questions'),
            DrawerComponent(onTap: () {}, icondata: Icons.chat, iconName: 'ChatBot'),
            DrawerComponent(onTap: () {}, icondata: Icons.person, iconName: 'Users'),
          ],
        ),
      ),

      /// **Button at the Bottom**
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Reusebtn(title: 'Become a seller', ontap: () {}),
      ),
    ],
  ),
),


        appBar: AppBar(
          backgroundColor: AppColor.btnColor,
        title:  Text(title[_currentIndex] , style: TextUtils.heading2,),
        centerTitle: true,
        ),
        body:_screen[_currentIndex]
        ),
    );
  }
}