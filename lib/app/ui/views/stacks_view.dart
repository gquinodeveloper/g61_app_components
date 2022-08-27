import 'package:flutter/material.dart';

class StacksView extends StatelessWidget {
  const StacksView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print("width: ${size.width}");
    print("height: ${size.height}");

    return Scaffold(
      appBar: AppBar(
        title: Text("Stacks"),
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            color: Colors.grey,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: size.height * 0.70,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
            ),
          ),
          /* Positioned(
            top: 130.0,
            left: 150.0,
            child: Container(
              width: 120.0,
              height: 120.0,
              color: Colors.green,
            ),
          ), */
          /*  Container(
            width: double.infinity,
            color: Colors.red,
          ),
          Positioned(
            top: 150.0,
            left: 150.0,
            //bottom: 0,
            //right: 0,
            child: Container(
              width: 100.0,
              height: 100.0,
              color: Colors.yellow,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 200.0,
              height: 200.0,
              color: Colors.green,
            ),
          ), */
        ],
      ),
    );
  }
}
