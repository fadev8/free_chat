import 'package:flutter/material.dart';

class DiscTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(0.0),
      child: ListTile(
        leading: CircleAvatar(

        ),
        title: Text('Victor Shuk'),
        subtitle: Text('U vener saha iyi'),
        trailing: Text('12:34'),
      ),
    );
  }
}