import 'package:flutter/material.dart';
import 'package:untitled/Utils/colors.dart';
import 'package:untitled/Utils/text_utils.dart';

class ReuseTextForm extends StatelessWidget {
  final TextEditingController controller;
  final String hinttext;
  final IconData icondata;
  const ReuseTextForm({super.key, required this.controller, required this.hinttext, required this.icondata});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: AppColor.whiteColor),
      controller: controller,
      cursorColor: AppColor.whiteColor,
          decoration: InputDecoration(
            contentPadding:const EdgeInsets.symmetric(vertical:  10 , horizontal: 20),
            labelText: hinttext,
            labelStyle: TextUtils.body16,
            suffixIcon: Icon(icondata , color: AppColor.whiteColor,),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColor.whiteColor
              ),
              borderRadius: BorderRadius.circular(50),

            ),
            border: OutlineInputBorder(
            
              borderSide: BorderSide(
                color: AppColor.whiteColor
              ),
              borderRadius: BorderRadius.circular(50),

            )
          ),
        )
        ;
  }
}