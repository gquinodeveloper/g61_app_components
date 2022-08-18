import 'package:flutter/material.dart';
import 'package:g61_app_componentes/app/ui/components/drawer_menu.dart';
import 'package:g61_app_componentes/app/ui/views/alerts_view.dart';
import 'package:g61_app_componentes/app/ui/views/avatars_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        title: Text("Home"),
      ),
    );
  }
}
