import 'package:flutter/material.dart';
import 'package:untitled/Components/reuse_btn.dart';
import 'package:untitled/Components/reuse_textform.dart';
import 'package:untitled/Utils/colors.dart';
import 'package:untitled/Utils/text_utils.dart';

class AskQuestion extends StatefulWidget {
  const AskQuestion({super.key});

  @override
  State<AskQuestion> createState() => _AskQuestionState();
}

class _AskQuestionState extends State<AskQuestion> {
  final title = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
        backgroundColor: AppColor.btnColor,
        title: Text(
          'Question Detail',
          style: TextUtils.heading3,
        ),
        centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40,),
              Text('Ask a Question ', style: TextUtils.heading4,),
              SizedBox(height: 40,),
              Text('Title' , style: TextUtils.body18,),
              SizedBox(height:10,),
              Text('Be review and imaging that you are asking a question to another persons' , style: TextUtils.body14,),
              SizedBox(height: 12,),
              ReuseTextForm(controller: title, hinttext: "title", icondata: Icons.edit),
              SizedBox(height: 12,),
              Text('Body' , style: TextUtils.body18,),
              SizedBox(height:10,),
              Text('The body of your Question contain your problem detail and result' , style: TextUtils.body14,),
             SizedBox(height:10,),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Your Answer",
                  hintStyle: TextUtils.body18,
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)
                  )
                ),
                minLines:
                    6, // any number you need (It works as the rows for the textarea)
                keyboardType: TextInputType.multiline,
                maxLines: null,
              ),
              SizedBox(height:10,),
              Reusebtn(title: "Post Your Answer", ontap: (){})
            ],
          ),
        ),
      ),
    );
  }
}