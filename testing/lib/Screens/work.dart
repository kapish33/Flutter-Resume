import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'conncet_me.dart';
import 'education.dart';

class Work extends StatelessWidget {
  const Work({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: const IconButton(
            onPressed: null,
            icon: Icon(
              CupertinoIcons.arrow_left_circle_fill,
              size: 28,
              color: Colors.black,
            ),
          ),
          actions: const [
            IconButton(
              onPressed: null,
              icon: Icon(
                CupertinoIcons.profile_circled,
                size: 28,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(
                CupertinoIcons.checkmark_circle_fill,
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