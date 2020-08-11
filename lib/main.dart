import 'package:flutter/material.dart';
import 'package:free_chat/screens/main_chat.dart';

void main() {
  runApp(FreeChat());
}

class FreeChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff21ce99),
        accentColor: Color(0xff21ce99),
      ),
      home: MainChat(),
    );
  }
}
