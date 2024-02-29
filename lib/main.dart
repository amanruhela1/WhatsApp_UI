import 'package:flutter/material.dart';
import 'package:whatsapp_ui/utils/colors.dart';
import 'package:whatsapp_ui/screens/contacts_list_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp UI',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: ContactListScreen(),
    );
  }
}
