import 'dart:async';
import 'package:grootstories/storymodel.dart';
import 'package:flutter/material.dart';

class NewStory extends StatefulWidget {
  @override
  _NewStoryState createState() {
    return new _NewStoryState();
  }
}

class _NewStoryState extends State<NewStory> {

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, i) => new Column(
          children: [
            new Divider(
              height: 10.0,
            ),
            new ListTile(
            title: new Text(data[i].name,style: TextStyle(fontSize: 16)),
              subtitle: new Container(
               padding: EdgeInsets.only(top: 5),

               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(data[i].author,
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(data[i].date),
                ],
               ),
              ),
              tileColor: Colors.brown.shade200,
              //onTap: StoryDetails(),
            ),
          ],
        ));
  }
}
