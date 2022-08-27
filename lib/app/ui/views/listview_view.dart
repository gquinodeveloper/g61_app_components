import 'package:flutter/material.dart';

class ListViewView extends StatelessWidget {
  const ListViewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contats"),
      ),
      body: Container(
        width: double.infinity,
        height: 120.0,
        color: Colors.transparent,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            _historyUser(),
            _historyUser(),
            _historyUser(),
            _historyUser(),
            _historyUser(),
            _historyUser(),
            _historyUser(),
          ],
        ),
      ),
      /* body: ListView(
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
      ), */
    );
  }

  Widget _historyUser() {
    return Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CircleAvatar(
            radius: 30.0,
          ),
          SizedBox(height: 10.0),
          Text("Gustavo"),
        ],
      ),
    );
  }
}
