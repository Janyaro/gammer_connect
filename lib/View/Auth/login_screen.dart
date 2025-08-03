import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:untitled/Components/google_btn.dart';
import 'package:untitled/Components/reuse_btn.dart';
import 'package:untitled/Components/reuse_textform.dart';
import 'package:untitled/Utils/text_utils.dart';
import 'package:untitled/View/Auth/forget_password_screen1.dart';
import 'package:untitled/View/Auth/signup_screen.dart';
import 'package:untitled/root_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
          child: Text("Hi, Welcome back" , style: TextUtils.heading1,),

        ),
        SizedBox(height: media.height * 0.03,),
        ReuseTextForm(controller: emailcontroller, hinttext: 'Email Address', icondata:Icons.alternate_email ),
        SizedBox(height: media.height * 0.03,),
        ReuseTextForm(controller: passwordcontroller, hinttext: 'Password', icondata: Icons.visibility),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(value: true, onChanged: (val){}),
                Text('Remember me' , style: TextUtils.body14,)
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, PageTransition(child:const ForgetPasswordScreenOne(), type: PageTransitionType.fade));
              },
              child: Text('Forget Password' , style: TextUtils.linktext,))
          ],
        ),
        SizedBox(height: media.height * 0.02,),
       Reusebtn(title: "Login", ontap: (){
        Navigator.push(context, PageTransition(child:const RootScreen(), type: PageTransitionType.fade));
       },),
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
       const GoogleSignUpBtn(image: 'assets/google.png',title: "LogIn with Google",),
       SizedBox(height: media.width *.03,),
       Align(
        alignment: Alignment.bottomRight,
         child: RichText(
           text: TextSpan(
             text: "Don't have an Account ? ", // First part
             style: TextUtils.body16,
             children: [
               TextSpan(
          text: "Sign Up", // Second part
          recognizer: TapGestureRecognizer()..onTap = (){
            Navigator.push(
           context,
           PageTransition(
             type: PageTransitionType.fade,
             child:const SignUpScreen(),
           ),
         );
          },
          style: TextUtils.linktext
               ),
             ],
           ),
         ),
       )
          ],
        ),
      ),
    );
  }
}
