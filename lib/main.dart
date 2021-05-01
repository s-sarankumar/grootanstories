import 'dart:io';

import 'package:flutter/material.dart';
import 'package:grootstories/splashscreen.dart';
import 'package:grootstories/topstory.dart';

import 'beststory.dart';
import 'newstory.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('MR. GROOT STORIES'),
            backgroundColor: Colors.brown.shade800,
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(text: "New Stories"),
                Tab(text: "Top Stories"),
                Tab(text: "Best Stories"),
              ],
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.exit_to_app),
                onPressed: () => exit(0),
              )
            ],
          ),
          body: TabBarView(
            children: [NewStory(), TopStory(), BestStory()],
          ),
        ),
      ),
    );
  }
}
