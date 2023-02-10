import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
   final String title;
   final String descrption;
   final double height;
   final int count;
  const CardWidget({Key? key, required this.title, required this.descrption, required this.count,required this.height}) : super(key: key);

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(

        elevation: 5,
        shadowColor: Colors.black,
        child: Column(
          children: [



            Row( mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Padding(
                  padding:EdgeInsets.symmetric(horizontal:8.0),
                  child:Container(
                    height:1.0,
                    width:size.width*.25,
                    color:Colors.grey,),),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(widget.title,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                ),
                Padding(
                  padding:EdgeInsets.symmetric(horizontal:8.0),
                  child:Container(
                    height:1.0,
                    width:size.width*.25,
                    color:Colors.grey,),),


              ],
            ),


            Container(
              height: widget.height,


              child: ListView.builder(
                itemCount: widget.count,
                itemBuilder: (context, index) {
                  return
                     Padding(
                       padding: const EdgeInsets.all(2.0),
                       child: Center(child: Text(widget.descrption,style: TextStyle(fontSize: 10),)),
                     );

                },
              ),
            ),


          ],
        ),
      ),
    );
  }
}
