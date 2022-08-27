import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:g61_app_componentes/app/data/models/user_model.dart';

class ListViewBuilderView extends StatefulWidget {
  const ListViewBuilderView({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderView> createState() => _ListViewBuilderViewState();
}

class _ListViewBuilderViewState extends State<ListViewBuilderView> {
  List<UserModel> users = [];
  @override
  void initState() {
    _getAllUsers();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  _getAllUsers() async {
    var dio = Dio();
    final response = await dio.get(
      'https://reqres.in/api/users',
      queryParameters: {
        "page": 1,
      },
    );

    users = (response.data["data"] as List)
        .map((json) => UserModel.fromJson(json))
        .toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Builder"),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(users[index].avatar ?? ""),
            ),
            title: Text("${users[index].firstName} ${users[index].lastName}"),
            subtitle: Text("${users[index].email}"),
          );
        },
      ),
    );
  }
}
