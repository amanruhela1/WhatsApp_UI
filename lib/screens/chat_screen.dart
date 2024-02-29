import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_ui/controllers/controllers.dart';
import 'package:whatsapp_ui/utils/colors.dart';
import 'package:whatsapp_ui/widgets/chat_list.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final Controllers controllers = Get.put(Controllers());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(
          controllers.info[0]['name'].toString(),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.video_call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          const Expanded(
            child: ChatList(),
          ),
          TextField(
            controller: controllers.messageController,
            style: TextStyle(color: Colors.white),
            cursorColor: Colors.white,
            decoration: InputDecoration(
              filled: true,
              fillColor: mobileChatBoxColor,
              prefixIcon: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Icon(Icons.emoji_emotions, color: Colors.grey,),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(Icons.camera_alt, color: Colors.grey,),
                    SizedBox(width: 8,),
                    Icon(Icons.attach_file, color: Colors.grey,),
                    SizedBox(width: 8,),
                    Icon(Icons.money, color: Colors.grey,),
                  ],
                ),
              ),
              hintText: 'Type a message!',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              contentPadding: const EdgeInsets.all(10),
            ),
          ),

        ],
      ),
    );
  }
}
