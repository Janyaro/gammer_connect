import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'package:untitled/Components/google_btn.dart';
import 'package:untitled/Components/reuse_btn.dart';
import 'package:untitled/Components/reuse_textform.dart';
import 'package:untitled/Utils/text_utils.dart';
import 'package:untitled/View/Auth/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Center(
          child: Text("Create An Account" , style: TextUtils.heading1,),
        ),
        Center(
          child: Text("Connects with your friends today" , style: TextUtils.body14,),
        ),
        SizedBox(height: media.height * 0.03,),
        ReuseTextForm(controller: emailcontroller, hinttext: 'Enter Username', icondata:Icons.person ),
        SizedBox(height: media.height * 0.015 ,),
        
        ReuseTextForm(controller: emailcontroller, hinttext: 'Email Address', icondata:Icons.alternate_email ),
        
        SizedBox(height: media.height * 0.015,),
        
        ReuseTextForm(controller: passwordcontroller, hinttext: 'Password', icondata: Icons.visibility),
        
        SizedBox(height: media.height * 0.05,),
       Reusebtn(title: "Sign Up", ontap: (){},),
        SizedBox(height: media.height * 0.03,),
       Row(
        children: [
          const Expanded(child: Divider()) ,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text('OR' ,style: TextUtils.body18,),
          ),
         const Expanded(child: Divider()) ,
        ],
       ),
       
       SizedBox(height: media.width *.1,),
       const GoogleSignUpBtn(image: 'assets/facebook.png',title: "LogIn with Google",),
       SizedBox(height: media.width *.06,),
       const GoogleSignUpBtn(image: 'assets/google.png',title: "LogIn with Google",),
       SizedBox(height: media.width *.03,),
       RichText(
  text: TextSpan(
    text: "Already have an Account? ", // First part
    style: TextUtils.body16,
    children: [
      TextSpan(
        text: "Log In", // Second part
        recognizer: TapGestureRecognizer()..onTap = () {
          Navigator.push(context, PageTransition(
            child: const LoginScreen(), type: PageTransitionType.bottomToTop));
        },
        style: TextUtils.linktext
      ),
    ],
  ),
)
          ],
        ),
      ),
    );
  }
}