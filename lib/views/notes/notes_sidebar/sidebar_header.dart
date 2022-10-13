import 'package:flutter/material.dart';
import 'package:mynotes/services/cloud/user_administration/user_data.dart';

class SideBarHeader extends StatelessWidget {
  const SideBarHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: const Color.fromARGB(255, 247, 82, 70),
      hoverColor: Colors.white70,
      leading: const Icon(
        Icons.account_circle,
        color: Colors.white,
      ),
      title: Text(UserData().userEmail!,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15.5,
          )),
      subtitle: const Text('The high roller!',
          style: TextStyle(
            color: Colors.yellow,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          )),
    );
  }
}
