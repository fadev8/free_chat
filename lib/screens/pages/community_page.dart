import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:free_chat/services/model/community.adrt.dart';

class CommunityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGridView.extentBuilder(
        maxCrossAxisExtent: 100,
        itemCount: users.length,
        itemBuilder: (context, index) {
          return Card(
            child: Container(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 16, bottom: 16),
                    height: 120,
                    width: 120,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(users[index].avatar),
                      radius: 40,
                    ),
                  ),
                  Text(
                    users[index].name,
                    style: TextStyle(fontSize: 18, color: Color(0xff21ce99)),
                  ),
                  Text(
                    users[index].phone,
                    style: TextStyle(
                        fontWeight: FontWeight.w300, color: Colors.blueGrey),
                  ),
                ],
              ),
            ),
          );
        },
        mainAxisSpacing: 16,
        crossAxisSpacing: 8,
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        staggeredTileBuilder: (index) {
          return StaggeredTile.count(2, index.isEven ? 3.1 : 2.5);
        },
      ),
    );
  }
}
