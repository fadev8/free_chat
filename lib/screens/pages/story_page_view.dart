import 'package:flutter/material.dart';
import 'package:flutter_stories/flutter_stories.dart';
import 'package:free_chat/services/model/status.dart';

class StoryPageView extends StatefulWidget {
  final Status status;

  const StoryPageView({Key key, this.status}) : super(key: key);
  @override
  _StoryPageViewState createState() => _StoryPageViewState();
}

class _StoryPageViewState extends State<StoryPageView> {
  final _momentDuration = const Duration(seconds: 5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Story(
        onFlashForward: Navigator.of(context).pop,
        onFlashBack: Navigator.of(context).pop,
        momentCount: widget.status.status.length,
        momentDurationGetter: (idx) => _momentDuration,
        momentBuilder: (context, idx) =>
            Image.asset('${widget.status.status[idx]}'),
      ),
    );
  }
}
