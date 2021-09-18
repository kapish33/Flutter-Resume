import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'conncet_me.dart';
import 'education.dart';
import 'homescreen.dart';

class Work extends StatelessWidget {
  const Work({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Work'),
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
                  child: const Text("Clone: Glassdoor",style: TextStyle(color:Color(0XFFFFFFFF),fontSize:25),),
                ),
                Container(
                  margin: const EdgeInsets.all(12.0),
                  padding: const EdgeInsets.all(8.0),
                  width: 300,
                  decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(8),
                      color:const Color(0XFF1D1F33)
                  ),
                  child: const Text("WhatsApp Automation",style: TextStyle(color:Color(0XFF22E67B),fontSize:25),),
                ),
                Container(
                  width: 300,
                  margin: const EdgeInsets.all(12.0),
                  padding: const EdgeInsets.all(8.0),
                  decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(8),
                      color:const Color(0XFF1D1F33)
                  ),
                  child: const Text("Flutter Resume APP",style: TextStyle(color:Color(0XFF22E67B),fontSize:25),),
                ),
                Container(
                  width: 300,
                  margin: const EdgeInsets.all(12.0),
                  padding: const EdgeInsets.all(8.0),
                  decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(8),
                      color:const Color(0XFF1D1F33)
                  ),

                  child: const Text("DSA With Java",style: TextStyle(color:Color(0XFF22E67B),fontSize:25),),
                ),
              ]
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: const Color(0XFFEB1555),
          items: const <Widget>[
            Icon(Icons.home,size: 30,),
            Icon(Icons.work, size: 30,color: Color(0XFF22E67B)),
            Icon(Icons.school, size: 30),
            Icon(Icons.contact_page, size: 30),
          ],
          index: 1,
          onTap: (index) {
            if(index == 0){
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomeScreen()));
            }
            if (index == 1) {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Work()));
            }
            if (index == 2) {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Education()));
            }
            if (index == 3) {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Connect()));
            }
            //Handle button tap
          },
        ));
  }
}