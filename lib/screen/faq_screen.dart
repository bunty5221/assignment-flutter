import 'package:flutter/material.dart';


class FAQPage extends StatefulWidget {
  @override
  _FAQPageState createState() => _FAQPageState();
}

class _FAQPageState extends State<FAQPage> {
  List<Map<String, dynamic>> _faqs = [    {      'question': 'What is FoodyBazar?',      'answer': 'FoddyBazar is food and grocery delivery company FoddyBazzar is food and grocery Delivery company FoddyBazar' },    {      'question': 'What are the advantages of using Flutter?',      'answer': 'Flutter offers fast development, expressive and flexible UI, and native performance on both iOS and Android.'    },    {      'question': 'Is Flutter only for mobile app development?',      'answer': 'No, Flutter can also be used for web and desktop app development, using Flutter for Web and Flutter for Desktop respectively.'    },  ];

  @override
  Widget build(BuildContext context) {
    Size size  = MediaQuery.of(context).size;
    return Scaffold(

      body: Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          SizedBox(height: size.height*.05,),

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
          SizedBox(
            height: 20,
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
                "FAQ",
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

          Expanded(
            child: Container(

              child: ListView.builder(
                itemCount: _faqs.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.grey,
                              width: 1,
                            )
                          )

                        ),

                      child: ExpansionTile(



                        title: Text(_faqs[index]['question'],style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(_faqs[index]['answer'],style: TextStyle(color: Colors.black,fontSize: 12),
                          ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
