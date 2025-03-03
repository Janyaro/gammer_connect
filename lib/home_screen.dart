import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:read_more_text/read_more_text.dart';
import 'package:untitled/Components/CarousalContainer.dart';
import 'package:untitled/Components/drawer_component.dart';
import 'package:untitled/Components/searchbartext.dart';
import 'package:untitled/Utils/colors.dart';
import 'package:untitled/Utils/text_utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final SearchController = TextEditingController();
      FlutterCarouselController buttonCarouselController = FlutterCarouselController();
  @override
  Widget build(BuildContext context) {

    final media = MediaQuery.of(context).size;
    return  SafeArea(
      child:  Scaffold(
          drawerScrimColor: Colors.white,
          
        drawer: Drawer(
          backgroundColor: AppColor.themeColor,
          child: ListView(
            children: [
              const DrawerHeader(
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
            DrawerComponent(onTap: (){}, icondata: Icons.home, iconName: 'Home',),
            
            DrawerComponent(onTap: (){},icondata: Icons.home, iconName: 'News',),
            
            DrawerComponent(onTap: (){},icondata: Icons.home, iconName: 'Questions',),
            
            DrawerComponent(onTap: (){},icondata: Icons.home, iconName: 'ChatBot',),
            DrawerComponent(onTap: (){},icondata: Icons.person, iconName: 'Users',),
            
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: AppColor.themeColor,
        title:  Text('Gammer Connect' , style: TextUtils.heading2,),
        centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               SearchBarText(controller: SearchController,),
                SizedBox(height: media.height * 0.01,),
                Text('Popular Games' , style: TextUtils.heading3,),
                SizedBox(height: media.height * 0.01,),
                
                //Carousal Slider
                FlutterCarousel.builder(
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
                   const CarousalContainer(image: 'assets/deadbydaylight.jpg', title: 'Dead By DayLight', description: 'description'), options:  FlutterCarouselOptions(
            height: 300.0,
            aspectRatio: 16 / 9,
            viewportFraction: 1.0,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: false,
            autoPlayInterval: const Duration(seconds: 2),
            autoPlayAnimationDuration: const Duration(milliseconds: 100),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: false,
            controller: buttonCarouselController,
            scrollDirection: Axis.horizontal,
            pauseAutoPlayOnTouch: true,
            pauseAutoPlayOnManualNavigate: true,
            pauseAutoPlayInFiniteScroll: false,
            enlargeStrategy: CenterPageEnlargeStrategy.scale,
            disableCenter: false,
            showIndicator: true,
            floatingIndicator: true,
            slideIndicator: CircularSlideIndicator(),
                    ),
                  ),
                  SizedBox(height: media.height * 0.02,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
            Text('Trending News' , style: TextUtils.heading3,),
            Text('See all' , style: TextUtils.linktext,)
                    ],
                  ),
                  SizedBox(height: media.height * 0.01,),
                  Container(
                    child: Column(
            children: [
                  Container(
                    width:double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Image.asset('assets/gtavice.png',
                    fit: BoxFit.cover,
                    ), 
                    ),
                    SizedBox(height: media.height * 0.01,),
                    ReadMoreText('Grand Theft Auto is an action-adventure video game series created by David Jones and',
                    style: TextUtils.body18,
                    numLines: 2,
                    
                    readMoreTextStyle: TextUtils.linktext,
                    readMoreText: 'Read more',
                    readLessText: 'Read less',
)
            ],
                    ),
                  ),
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}