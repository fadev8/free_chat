import 'package:flutter/material.dart';
import 'package:free_chat/services/model/status.dart';
import 'package:timeago/timeago.dart' as timeAgo;

class StatusTile extends StatelessWidget {
  final Status status;
  final Function onTap;

  const StatusTile({Key key, this.status, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 0,
        margin: EdgeInsets.only(top: 2.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 27,
            backgroundImage: AssetImage(status.user.avatar),
          ),
          title: Text(status.user.name),
          subtitle: Text(timeAgo.format(status.createdAt)),
        ),
      ),
    );
  }
}
