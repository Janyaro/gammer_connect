import 'package:flutter/material.dart';
import 'package:untitled/Utils/colors.dart';

class SearchBarText extends StatelessWidget {
  final TextEditingController controller;
  const SearchBarText({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return  TextFormField( 
      controller: controller,
                cursorColor: AppColor.whiteColor,
                decoration: InputDecoration(
                  hintText: 'Search Games',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColor.greyColor),
                  borderRadius: BorderRadius.circular(50),
                  ),
                  contentPadding:const EdgeInsets.symmetric(
                    vertical: 10 , horizontal: 15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                      color: AppColor.greyColor
                    )
                  
                  ),focusColor: AppColor.greyColor
                  
                ),
              );
  }
}