import 'package:flutter/material.dart';

class InputsView extends StatelessWidget {
  const InputsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inputs"),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
        child: ListView(
          children: [
            _inpuText(),
            const SizedBox(height: 30.0),
            _inpuTextPassowrd(),
            const SizedBox(height: 30.0),
            _inpuTextEmail(),
            const SizedBox(height: 30.0),
            _inpuTextPhone(),
          ],
        ),
      ),
    );
  }

  Widget _inpuText() {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        labelText: "Name",
        hintText: "add your name",
      ),
      onChanged: (value) {
        print(value);
      },
    );
  }

  Widget _inpuTextPassowrd() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        labelText: "Password",
        hintText: "add your password",
        icon: Icon(Icons.lock),
        suffixIcon: GestureDetector(
          onTap: () {
            print("Click OnTap");
          },
          onDoubleTap: () {},
          onLongPress: () {},
          child: Icon(Icons.remove_red_eye),
        ),
      ),
      onChanged: (value) {
        print(value);
      },
    );
  }

  Widget _inpuTextEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        labelText: "Email",
        hintText: "add your email",
      ),
      onChanged: (value) {
        print(value);
      },
    );
  }

  Widget _inpuTextPhone() {
    return TextField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        labelText: "Phone",
        hintText: "add your phone",
      ),
      onChanged: (value) {
        print(value);
      },
    );
  }
}
