import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/Utils/colors.dart';

class TextUtils {
  static TextStyle heading1 =  GoogleFonts.roboto(
    textStyle:TextStyle(fontSize: 28 , fontWeight: FontWeight.bold , color: AppColor.whiteColor)
  );
  static TextStyle heading2 = GoogleFonts.roboto(
    textStyle:TextStyle(fontSize: 22 , fontWeight: FontWeight.w800 , color: AppColor.whiteColor )
  );
  static TextStyle heading3 = GoogleFonts.roboto(
    textStyle:TextStyle(fontSize: 20 , fontWeight: FontWeight.w800 , color: AppColor.whiteColor)
  );
  static TextStyle heading4 = GoogleFonts.roboto(
    textStyle: TextStyle(fontSize: 18 , fontWeight: FontWeight.w800 , color: AppColor.whiteColor)
  );
    static TextStyle titleText = GoogleFonts.roboto(
    textStyle: TextStyle(fontSize: 18 , fontWeight: FontWeight.w600 , color: AppColor.whiteColor)
  );
  
  static TextStyle body18 = GoogleFonts.roboto(
    textStyle: TextStyle(fontSize: 18 , fontWeight: FontWeight.normal , color: AppColor.whiteColor)
  );
  static TextStyle body16 =  GoogleFonts.roboto(
    textStyle: TextStyle(fontSize: 16 , fontWeight: FontWeight.normal , color: AppColor.whiteColor)
  );
  static TextStyle body14 =  GoogleFonts.roboto(
    textStyle: TextStyle(fontSize: 14 , fontWeight: FontWeight.normal , color: AppColor.whiteColor)
  );
  static TextStyle linktext =  GoogleFonts.roboto(
    textStyle: TextStyle(fontSize: 16 , fontWeight: FontWeight.normal , color: Colors.blue)
  );
}
