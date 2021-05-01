import 'package:flutter/material.dart';
import 'package:grootstories/storymodel.dart';

//import 'package:grootstories/storydetails.dart';
class TopStory extends StatefulWidget {
  @override
  _TopStoryState createState() => _TopStoryState();
}

class _TopStoryState extends State<TopStory> {
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
                  title: new Text(data[i].name, style: TextStyle(fontSize: 16)),
                  subtitle: new Container(
                    padding: EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          data[i].author,
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(data[i].date),
                      ],
                    ),
                  ),
                  tileColor: Colors.brown.shade200,
                ),
              ],
            ));
  }
}
