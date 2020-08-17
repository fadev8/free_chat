import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:free_chat/screens/pages/story_page_view.dart';
import 'package:free_chat/services/model/status.dart';
import 'package:free_chat/widgets/status_title.dart';

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: statusData.length,
          itemBuilder: (context, index) {
            return StatusTile(
              status: statusData[index],
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => StoryPageView(
                          status: statusData[index],
                        )));
              },
            );
          }),
    );
  }
}
