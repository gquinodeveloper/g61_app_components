import 'package:flutter/material.dart';
import 'package:g61_app_componentes/app/ui/views/alerts_view.dart';
import 'package:g61_app_componentes/app/ui/views/avatars_view.dart';
import 'package:g61_app_componentes/app/ui/views/cards_view.dart';
import 'package:g61_app_componentes/app/ui/views/listview_view.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: Column(
              children: const [
                CircleAvatar(
                  radius: 40.0,
                  backgroundImage: AssetImage("assets/i.jpeg"),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Gustavo Quino",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "gquinodeveloper@gmail.com",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Column(
            children: [
              ListTile(
                leading: Icon(Icons.home_max_rounded),
                title: Text("Home"),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                ),
              ),
              Divider(indent: 15.0, endIndent: 15.0),
              ListTile(
                onTap: () {
                  Navigator.pushReplacement<void, void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const AlertsView(),
                    ),
                  );
                  /*  Navigator.pushReplacement(context, newRoute) <void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const AlertsView(),
                    ),
                  ); */
                },
                leading: Icon(Icons.add_alert_sharp),
                title: Text("Alerts"),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                ),
              ),
              Divider(indent: 15.0, endIndent: 15.0),
              ListTile(
                onTap: () {
                  Navigator.push<void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const AvatarsView(),
                    ),
                  );
                },
                leading: Icon(Icons.person),
                title: Text("Avatars"),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                ),
              ),
              Divider(indent: 15.0, endIndent: 15.0),
              ListTile(
                onTap: () {
                  Navigator.push<void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const CardsView(),
                    ),
                  );
                },
                leading: Icon(Icons.card_giftcard_outlined),
                title: Text("Cards"),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                ),
              ),
              Divider(indent: 15.0, endIndent: 15.0),
              ListTile(
                onTap: () {
                  Navigator.push<void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const ListViewView(),
                    ),
                  );
                },
                leading: Icon(Icons.list_alt),
                title: Text("ListView"),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
