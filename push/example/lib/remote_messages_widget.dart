import 'package:flutter/material.dart';
import 'package:push/push.dart';
import 'package:push_example/text_row.dart';

class RemoteMessagesWidget extends StatelessWidget {
  List<RemoteMessage> remoteMessages;

  RemoteMessagesWidget(this.remoteMessages);

  @override
  Widget build(BuildContext context) {
    if (remoteMessages.isEmpty) {
      return const Text("No remote messages");
    }
    return Column(
      children: [
        ...remoteMessages.map((message) =>
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextRow("Title", message.notification?.title.toString()),
                  TextRow("Body", message.notification?.body.toString()),
                  TextRow("Data", message.data?.toString())
                ],
              ),
            )).toList()
      ],
    );
  }

}