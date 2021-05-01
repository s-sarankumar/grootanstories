import 'package:flutter/material.dart';
import 'package:grootstories/storymodel.dart';

class StoryDetails extends StatelessWidget {
  final StoryModel storyModel;
  StoryDetails(this.storyModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(storyModel.story),
        ),
      ),
    );
  }
}
