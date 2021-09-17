import 'package:flutter/material.dart';
import '../Design/palate.dart';

class UPcommingRooms extends StatelessWidget {
  const UPcommingRooms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Pallete.secondarybackground,
        borderRadius: BorderRadius.circular(20)
      ),
      child:  Padding(
        padding: const EdgeInsets.only(left: 32,top: 4,bottom: 4),
        child: Column(
          children: const <Widget>[
            Text("Hello People!"),
            SizedBox(
              height: 80,
            )
          ],
        ),
      )
    );
  }
}
