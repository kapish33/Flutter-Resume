import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/Screens/education.dart';
import 'package:testing/Screens/work.dart';
import 'package:testing/Screens/conncet_me.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: const IconButton(
            onPressed: null,
            icon: Icon(
              CupertinoIcons.search,
              size: 28,
              color: Colors.black,
            ),
          ),
          actions: const [
            IconButton(
              onPressed: null,
              icon: Icon(
                CupertinoIcons.envelope_open,
                size: 28,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(
                CupertinoIcons.calendar,
                size: 28,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(
                CupertinoIcons.bell,
                size: 28,
                color: Colors.black,
              ),
            ),
          ],
        ),
        extendBody: true,
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.green,
          items: const <Widget>[
            Icon(Icons.work, size: 30),
            Icon(Icons.school, size: 30),
            Icon(Icons.contact_page, size: 30),
          ],
          onTap: (index) {
            // print(index);
            if (index == 0) {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Work()));
            }
            if (index == 1) {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Education()));
            }
            if (index == 2) {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Connect()));
            }

            //Handle button tap
          },
        ));
  }
}

// class Page1 extends StatelessWidget {
//   const Page1({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//       title: Text('Page 1'),
//     ));
//   }
// }
