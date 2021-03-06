import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tamween_flutter_project/presentation_layer/screens/login_screen.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text('FAQ'),
          leading: Icon(Icons.format_quote),
          onTap: () {},
        ),
        Divider(),
        ListTile(
          title: Text('Logout'),
          leading: Icon(Icons.logout),
          onTap: () {
            Get.offAllNamed(LoginScreen.routeName);
          },
        ),
      ],
    );
  }
}
