import 'package:flutter/material.dart';
import 'package:g61_app_componentes/app/ui/views/alerts_view.dart';
import 'package:g61_app_componentes/app/ui/views/avatars_view.dart';
import 'package:g61_app_componentes/app/ui/views/cards_view.dart';
import 'package:g61_app_componentes/app/ui/views/home_view.dart';
import 'package:g61_app_componentes/app/ui/views/listview_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const ListViewView(),
      //home: const AvatarsView(),
      //home: const CardsView(),
      home: const HomeView()
    );
  }
}
