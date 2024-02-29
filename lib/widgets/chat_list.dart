import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_ui/controllers/controllers.dart';
import 'package:whatsapp_ui/widgets/my_message_card.dart';
import 'package:whatsapp_ui/widgets/sender_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final Controllers controllers = Get.put(Controllers());

    return ListView.builder(
      itemCount: controllers.messages.length,
      itemBuilder: (context, index) {
        if (controllers.messages[index]['isMe'] == true) {
          return MyMessageCard(
            message: controllers.messages[index]['text'].toString(),
            date: controllers.messages[index]['time'].toString(),
          );
        }
        return SenderMessageCard(
          message: controllers.messages[index]['text'].toString(),
          date: controllers.messages[index]['time'].toString(),
        );
      },
    );
  }
}
