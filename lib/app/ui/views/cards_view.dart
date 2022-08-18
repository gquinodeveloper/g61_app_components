import 'package:flutter/material.dart';

class CardsView extends StatelessWidget {
  const CardsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cards"),
      ),
      body: Container(
        margin: const EdgeInsets.only(
          left: 15.0,
          right: 15.0,
          top: 20.0,
        ),
        child: Column(
          children: [
            Card(
              elevation: 10.0,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              color: Colors.black,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 15.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Center(
                      child: FlutterLogo(
                        size: 100.0,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Bitcoin",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "USD 24455.98",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50.0),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 15.0,
              ),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(153, 0, 255, 1.0),
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(153, 0, 255, 1.0),
                      blurRadius: 10.5,
                      spreadRadius: 0.1,
                    ),
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Center(
                    child: FlutterLogo(
                      size: 100.0,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    "Bitcoin",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "USD 24455.98",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const CircleAvatar(),
            Container(
              width: 60.0,
              height: 60.0,
              decoration: const BoxDecoration(
                color: Colors.pink,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.pink,
                    blurRadius: 40.5,
                    spreadRadius: 0.2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
