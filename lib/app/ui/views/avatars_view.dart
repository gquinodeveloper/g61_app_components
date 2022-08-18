import 'package:flutter/material.dart';

class AvatarsView extends StatelessWidget {
  const AvatarsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: const CircleAvatar(
          backgroundImage: AssetImage("assets/i.jpeg"),
        ),
        title: const Text("Gustavo Quino"),
        actions: const [
          Icon(Icons.notification_important, color: Colors.black,),
          SizedBox(width: 15.0),
          Icon(Icons.settings, color: Colors.black,),
          SizedBox(width: 15.0),
        ],
      ),
      /* body: SafeArea(
        child: Row(
          children: const [
            CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.pink,
              //backgroundImage: NetworkImage("https://reqres.in/img/faces/7-image.jpg") ,
              backgroundImage: AssetImage("assets/i.jpeg"),
            ),
            SizedBox(width: 10.0),
            Text(
              "Gustavo Quino",
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ), */
    );
  }
}
