import 'package:flutter/material.dart';
import 'package:free_chat/services/model/disc.dart';
import 'package:timeago/timeago.dart' as timeAgo;

class DiscTile extends StatelessWidget {
  final Messages message;

  const DiscTile({Key key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.only(top: 1),
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(message.sender.avatar),
        ),
        title: Text(message.sender.name),
        subtitle: Text(message.content),
        trailing: Text(timeAgo.format(
            DateTime.fromMillisecondsSinceEpoch(message.createdAt),
            locale: "en_short")),
      ),
    );
  }
}
