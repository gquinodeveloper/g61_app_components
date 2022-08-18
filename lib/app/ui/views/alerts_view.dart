import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

import 'package:g61_app_componentes/app/ui/components/drawer_menu.dart';

class AlertsView extends StatelessWidget {
  const AlertsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMenu(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Alerts"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            _showAlert(context);
          },
          child: const Text("Show Alert"),
        ),
      ),
    );
  }

  void _showAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        if (Platform.isIOS) {
          return CupertinoAlertDialog(
            title: const Text("Alert title IOS"),
            content: contentAlert(),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Cancelar"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Aceptar"),
              ),
            ],
          );
        } else {
          return AlertDialog(
            title: Text("Alert title ANDROID"),
            content: contentAlert(),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Cancelar"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Aceptar"),
              ),
            ],
          );
        }
      },
    );
  }

  Widget contentAlert() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: const [
        FlutterLogo(
          size: 100.0,
        ),
        SizedBox(height: 10.0),
        Text("Estoy mostrado una alerta"),
      ],
    );
  }

  /* List<Widget> actionsButton(){
    return Column();
  } */
}
