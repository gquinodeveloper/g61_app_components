import 'package:flutter/material.dart';

class ListViewView extends StatelessWidget {
  const ListViewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contats"),
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/i.jpeg"),
            ),
            trailing: Icon(Icons.phone),
            title: Text("Gustavo Quino"),
            subtitle: Text("958346375"),
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text("Gustavo Quino"),
            subtitle: Text("958346375"),
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text("Gustavo Quino"),
            subtitle: Text("958346375"),
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text("Gustavo Quino"),
            subtitle: Text("958346375"),
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text("Gustavo Quino"),
            subtitle: Text("958346375"),
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text("Gustavo Quino"),
            subtitle: Text("958346375"),
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text("Gustavo Quino"),
            subtitle: Text("958346375"),
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text("Gustavo Quino"),
            subtitle: Text("958346375"),
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text("Gustavo Quino"),
            subtitle: Text("958346375"),
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text("Gustavo Quino"),
            subtitle: Text("958346375"),
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text("Gustavo Quino"),
            subtitle: Text("958346375"),
          ),
          ListTile(
            title: Text("Gustavo Quino"),
            subtitle: Text("958346375"),
          ),
        ],
      ),
    );
  }
}
