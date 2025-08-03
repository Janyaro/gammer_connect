import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Components/reuse_btn.dart';
import 'package:untitled/Components/reuse_textform.dart';
import 'package:untitled/Utils/colors.dart';
import 'package:untitled/Utils/text_utils.dart';

class AddItemScreen extends StatefulWidget {
  const AddItemScreen({super.key});

  @override
  State<AddItemScreen> createState() => _AddItemScreenState();
}

class _AddItemScreenState extends State<AddItemScreen> {
  final pnameController = TextEditingController();
  final desController = TextEditingController();
  final priceController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Item'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,

          children: [
            SizedBox(height: media.height * 0.04,),
            ReuseTextForm(controller: pnameController, hinttext: 'Product Name'),
            SizedBox(height: media.height * 0.02,),
            TextFormField(
              style: TextStyle(color: AppColor.black),
              controller: desController,
              cursorColor: AppColor.whiteColor,
              decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  labelText: 'Description',
                  labelStyle: TextUtils.body16,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColor.black),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  border:OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8)
                ),
                
                fillColor: Colors.grey.shade300,
                filled: true
          ),
            ),
            SizedBox(height: media.height * 0.02,),
            const Text(
              'Condition',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: media.height * 0.02,),
            Row(
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    side: BorderSide(color: Colors.black , width: 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                    )
                  ),
                  onPressed: () {}, child:const Text('New')),
                  SizedBox(width: media.width * 0.03,),
                TextButton(
                  style: TextButton.styleFrom(
                    side: BorderSide(color: Colors.black , width: 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                    )
                  ),
                   onPressed: () {}, child:const Text('Used')),
              ],

            ),
            SizedBox(height: media.height * 0.01,),
            ReuseTextForm(controller: priceController, hinttext: 'Price'),
            SizedBox(height: media.height * 0.01,),
            const Text(
              'Images',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: media.height * 0.02,),
            Center(
              child: DottedBorder(
                color: Colors.black, 
                strokeWidth: 2, 
                dashPattern: [6, 3],
                borderType: BorderType.RRect,
                radius:const Radius.circular(8),
                child: Container(
                  padding: EdgeInsets.all(25),
                  decoration:const BoxDecoration(),
                  child: Column(
                    children: [
                     const Text('Add Images'),
                     const Text('upload high-quality images of your item'),
                      TextButton(onPressed: () {}, child: Text('Upload'))
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: media.height * 0.02,),
            Reusebtn(title: 'Add Item', ontap: (){
              
            })
          ],
        ),
      ),
    );
  }
}
