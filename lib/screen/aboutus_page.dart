import 'package:flutter/material.dart';
import 'package:untitled/screen/feedback_page.dart';
import 'package:untitled/widget/card_widget.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height*.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.blueGrey,
                    size: 18,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: IconButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>FeedbackPage()));
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
            SizedBox(
              height: size.height*.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    height: 1.0,
                    width: size.width * .35,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "About US",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    height: 1.0,
                    width: size.width * .35,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * .05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                child: Image.network(
                  'https://images.unsplash.com/photo-1568992687947-868a62a9f521?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80',
                  height: size.height * .2,
                  width: size.width * .93,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            CardWidget(
              title: 'Summary',
              descrption:
                  'This is The Summary Page This is The Summary PageThis is The Summary Page',
              count: 5, height: size.height*.2,
            ),
            SizedBox(
              height: size.height * .03,
            ),
            CardWidget(
              title: 'Description',
              descrption:
                  'This is The Summary Page This is The Summary PageThis is The Summary Page',
              count: 8, height: size.height*.25,
            ),
          ],
        ),
      ),
    );
  }
}
