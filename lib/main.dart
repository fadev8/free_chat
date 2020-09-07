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
          scaffoldBackgroundColor: Colors.blueGrey[50],
          appBarTheme: AppBarTheme(
            brightness: Brightness.dark,
            textTheme: TextTheme(
              headline6: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          brightness: Brightness.light),
      home: MainChat(),
    );
  }
}
