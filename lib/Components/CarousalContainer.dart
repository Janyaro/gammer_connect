import 'package:flutter/material.dart';
import 'package:untitled/Utils/text_utils.dart';

class CarousalContainer extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  const CarousalContainer({super.key, required this.image, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Container(
                width: double.infinity,
                height: media.height * 0.33,
              decoration: BoxDecoration(
                 image: DecorationImage(
                image: AssetImage(image), // Load image from assets
                fit: BoxFit.cover, // Covers the entire container
              ),
              borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.black
            )
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 20,
                    left: 10,
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text(title , style: TextUtils.heading3,),
                    Text(description , style: TextUtils.body16,)
                  ],))
                ],
              ),
              );
  }
}