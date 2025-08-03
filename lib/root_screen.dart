import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:untitled/Components/drawer_component.dart';
import 'package:untitled/Components/reuse_btn.dart';
import 'package:untitled/Utils/colors.dart';
import 'package:untitled/Utils/text_utils.dart';
import 'package:untitled/View/Vender_Verification_Screens/verification_step1.dart';
import 'package:untitled/View/home_screen.dart';
import 'package:untitled/View/New_Screens/new_screen.dart';
import 'package:untitled/View/profile.screen.dart';
import 'package:untitled/View/QuestionAnswer_Screen/question_screen.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  final searchController = TextEditingController();
  FlutterCarouselController buttonCarouselController =
      FlutterCarouselController();
  int _currentIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _screen = const[
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
    return SafeArea(
      child: Scaffold(
       appBar: AppBar(
  backgroundColor: AppColor.btnColor,
  title: Text(title[_currentIndex], style: TextUtils.heading2),
  centerTitle: true,
  leading: Builder(
    builder: (context) => IconButton(
      icon:const Icon(Icons.menu, color: Colors.white, size: 30),
      onPressed: () {
        Scaffold.of(context).openDrawer(); // Correct context for opening the drawer
      },
    ),
  ),
),

        drawer: Drawer(
          backgroundColor: AppColor.themeColor,
          child: Column(
            children: [
              DrawerHeader(
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: Text('1'),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Wasim Akram Janyaro",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    Text(
                      "wasayojanyaro@gmail.com",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              
              Expanded(
                child: ListView(
                  children: [
                    DrawerComponent(
                        onTap: () {}, icondata: Icons.home, iconName: 'Home'),
                        
                    DrawerComponent(
                        onTap: () {}, icondata: Icons.home, iconName: 'News'),
                    DrawerComponent(
                        onTap: () {},
                        icondata: Icons.question_answer,
                        iconName: 'Questions'),
                    DrawerComponent(
                        onTap: () {},
                        icondata: Icons.chat,
                        iconName: 'ChatBot'),
                    DrawerComponent(
                        onTap: () {},
                        icondata: Icons.person,
                        iconName: 'Users'),
                  ],
                ),
              ),

              /// **Button at the Bottom**
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Reusebtn(title: 'Become a seller', ontap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const VerificationStep1()));
                }),
              ),
            ],
          ),
        ),
        body: _screen[_currentIndex],
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
          child: BottomNavigationBar(
            
            backgroundColor: AppColor.btnColor,
            onTap: _onItemTapped,
            items: [
              BottomNavigationBarItem(
                  icon: const Icon(Icons.home),
                  label: 'Home',
                  backgroundColor: AppColor.themeColor),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.chat),
                  label: 'Search',
                  backgroundColor: AppColor.themeColor),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.question_answer),
                  label: 'Questions',
                  backgroundColor: AppColor.themeColor),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.person),
                  label: 'Profile',
                  backgroundColor: AppColor.themeColor),
            ],
            currentIndex: _currentIndex,
            selectedItemColor: AppColor.btnColor,
            unselectedItemColor: Colors.grey,
            unselectedLabelStyle: const TextStyle(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
