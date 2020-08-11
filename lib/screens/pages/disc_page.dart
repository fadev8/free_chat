import 'package:flutter/material.dart';
import 'package:free_chat/widgets/disc_tile.dart';

class DiscPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 15,
          padding: EdgeInsets.only(bottom: 72.0, top: 24),
          itemBuilder: (context, index) {
        return DiscTile();
      }),
    );
  }
}


