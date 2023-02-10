import 'package:flutter/material.dart';
import 'package:untitled/screen/faq_screen.dart';

import '../widget/reuse_widget.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({Key? key}) : super(key: key);

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
late final String?  _selectedOption;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return  Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: size.height*.05,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon:
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.blueGrey,
                      size: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: IconButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>FAQPage()));
                    },
                    icon:
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.blueGrey,
                      size: 18,
                    ),
                  ),
                ),

              ],
            ),
            SizedBox(height: 20,),
            Row( mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Padding(
                  padding:EdgeInsets.symmetric(horizontal:10.0),
                  child:Container(
                    height:1.0,
                    width:size.width*.2,
                    color:Colors.grey,),),
                Text("Complaint & Feedback Form",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                Padding(
                  padding:EdgeInsets.symmetric(horizontal:10.0),
                  child:Container(
                    height:1.0,
                    width:size.width*.2,
                    color:Colors.grey,),),

              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text("Type"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
              child: ReusableDropdownButtonFormField(items: ["Feedback","Complaint"], onChanged: (String? value) {  setState(() {
                _selectedOption = value!;
              }); }, hint: 'Feedback',)
            ),


            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 15,bottom: 0),
              child: Text("Write your feedback"),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
              child: TextFormField(
                maxLines: 10,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(2),
                  )
                ),

              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text("Select City"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
              child:ReusableDropdownButtonFormField(items: ["Bhairahawa","Kolkata"], onChanged: (String? value ) {  setState(() {
              _selectedOption = value!;
              }); }, hint: 'Bhairahwa',),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 30,
                width: size.width*.94,
                decoration: BoxDecoration(
                  color: Color(0xff72e34d),
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Center(child: Text("Submit",style: TextStyle(color: Colors.white),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
