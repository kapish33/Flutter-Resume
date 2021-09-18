import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:testing/Screens/work.dart';

import 'conncet_me.dart';
import 'homescreen.dart';

class Education extends StatelessWidget {
  const Education({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Education!'),
          actions: const [
            IconButton(
              onPressed: null,
              icon: Icon(
                CupertinoIcons.profile_circled,
                size: 28,
                color: Colors.white,
              ),
            ),
          ],
        ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget>[
              Container(
                margin: const EdgeInsets.all(12.0),
                padding: const EdgeInsets.all(8.0),
                width: 300,
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(8),
                    color:const Color(0XFFFF0067)
                ),
                child: const Text("Flutter: By Kabir Singh",style: TextStyle(color:Color(0XFFFFFFFF),fontSize:25),),
              ),
              Container(
                margin: const EdgeInsets.all(12.0),
                padding: const EdgeInsets.all(8.0),
                width: 300,
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(8),
                    color:const Color(0XFF1D1F33)
                ),
                child: const Text("Mern Stack",style: TextStyle(color:Color(0XFF22E67B),fontSize:25),),
              ),
              Container(
                width: 300,
                margin: const EdgeInsets.all(12.0),
                padding: const EdgeInsets.all(8.0),
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(8),
                    color:const Color(0XFF1D1F33)
                ),
                child: const Text("DAS WIth JAVA",style: TextStyle(color:Color(0XFF22E67B),fontSize:25),),
              ),
              Container(
                width: 300,
                margin: const EdgeInsets.all(12.0),
                padding: const EdgeInsets.all(8.0),
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(8),
                    color:const Color(0XFF1D1F33)
                ),
                child: const Text("Delhi University",style: TextStyle(color:Color(0XFF22E67B),fontSize:25),),
              ),
            ]
        ),
      ),
    bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: const Color(0XFFEB1555),
          items: const <Widget>[
            Icon(Icons.home, size: 30),
            Icon(Icons.work, size: 30),
            Icon(Icons.school, size: 30,color: Color(0XFF22E67B)),
            Icon(Icons.contact_page, size: 30),
          ],
          index: 2,
          onTap: (index) {
            if (index == 0) {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const HomeScreen()));
            }
            if (index == 1) {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const Work()));
            }
            if (index == 2) {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const Education()));
            }
            if (index == 3) {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const Connect()));
            }

            //Handle button tap
          },
        ));
  }
}
