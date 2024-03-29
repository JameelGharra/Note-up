import 'package:flutter/material.dart';
import 'package:mynotes/services/cloud/user_administration/user_data.dart';

class BlockedUsersListView extends StatelessWidget {
  const BlockedUsersListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: UserData().blockedUserEmails.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            UserData().blockedUserEmails[index],
            maxLines: 1,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
          ),
          trailing: IconButton(
            onPressed: () {
              // final shouldDelete = await showDeleteDialog(context);
              // if (shouldDelete) {
              //   onDeleteNote(note);
              // }
            },
            icon: const Icon(Icons.delete),
          ),
        );
      },
    );
  }
}
