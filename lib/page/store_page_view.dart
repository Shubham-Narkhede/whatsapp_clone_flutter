import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoryPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<StoryItem> storyItems = [
      StoryItem.text('''Stay Home''', Colors.green),
      StoryItem.text("Stay Safe", Colors.yellow),
      StoryItem.text("We will fight with Covid-19", Colors.orange),
    ];

    return Material(
      child: StoryView(
        storyItems,
        repeat: true,
        inline: false,
      ),
    );
  }
}
