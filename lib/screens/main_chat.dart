import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:free_chat/screens/pages/disc_page.dart';

class MainChat extends StatefulWidget {
  @override
  _MainChatState createState() => _MainChatState();
}

class _MainChatState extends State<MainChat> {

  PageController _controller;
  int _page = 0;

  @override
  void initState() {
    super.initState();

    _controller = PageController(
      initialPage: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FreeChat'),
      ),
      body: Container(
        child: PageView(
          controller: _controller,
          onPageChanged: (p){
            setState(() {
              _page = p;
            });
          },
          children: <Widget>[
            DiscPage(),
            Container(color: Colors.blue,),
            Container(color: Colors.orange,)
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        onTap: navigationTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.conversation_bubble),
            title: Text('Disc'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.refresh_circled_solid),
            title: Text('Status'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.group),
            title: Text('Users'),
          ),
        ],
      ),
    );
  }

  void navigationTapped(int page){
    _controller.animateToPage(page, duration: Duration(milliseconds: 300), curve: Curves.ease);
  }

}
