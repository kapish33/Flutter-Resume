import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:testing/Screens/work.dart';

import 'education.dart';
import 'homescreen.dart';

class Connect extends StatelessWidget {
  const Connect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MERN Stack Developer!'),
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
                  height: 300,
                  decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(8),
                      // color:const Color(0XFFFF0067)
                  ),
                    child: const CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage("images/profile.jpg"),
                    )
                ),


                Container(
                  margin: const EdgeInsets.all(12.0),
                  padding: const EdgeInsets.all(8.0),
                  width: 300,
                  decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(8),
                      color:const Color(0XFFFF0067)
                  ),
                  child: const Text("265 b block sawarmati section",style: TextStyle(color:Color(0XFFFFFFFF),fontSize:25),),
                ),
                Container(
                  margin: const EdgeInsets.all(12.0),
                  padding: const EdgeInsets.all(8.0),
                  width: 300,
                  decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(8),
                      color:const Color(0XFF1D1F33)
                  ),
                  child: const Text("+91 999*******",style: TextStyle(color:Color(0XFF22E67B),fontSize:25),),
                ),
                Container(
                  width: 300,
                  margin: const EdgeInsets.all(12.0),
                  padding: const EdgeInsets.all(8.0),
                  decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(8),
                      color:const Color(0XFF1D1F33)
                  ),
                  child: const Text("Fresher!",style: TextStyle(color:Color(0XFF22E67B),fontSize:25),),
                ),
                Container(
                  width: 300,
                  margin: const EdgeInsets.all(12.0),
                  padding: const EdgeInsets.all(8.0),
                  decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(8),
                      color:const Color(0XFF1D1F33)
                  ),
                  child: const Text("Open To Work!",style: TextStyle(color:Color(0XFF22E67B),fontSize:25),),
                ),
              ]
          ),
        ),

        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: const Color(0XFFEB1555),
          items: const <Widget>[
            Icon(Icons.home, size: 30),
            Icon(Icons.work, size: 30),
            Icon(Icons.school, size: 30),
            Icon(Icons.contact_page, size: 30,color: Color(0XFF22E67B)),
          ],
          index: 3,
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


// body: Column(
// children: const <Widget>[
// Padding(
// padding: EdgeInsets.all(8.0),
// child: Center(
// child: Text(
// 'Welcome to Flutter Tutorial.',
// style: TextStyle(
// color: Color(0XFF20B067),
// fontSize: 26,
// ),
// ),
// ),
// ),
// CircleAvatar(radius: 80),
// Padding(
// padding: EdgeInsets.only(top: 8.0),
// child: Text(
// 'The Growing Developer!',
// style: TextStyle(
// color: Color(0XFF20B067),
// fontSize: 20,
// ),
// ),
// ),
//
//
// ],
//
// ),