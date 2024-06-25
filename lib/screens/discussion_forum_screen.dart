import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';

class DiscussionForumScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forum Diskusi'),
        backgroundColor: Colors.lightBlue[200],
      ),
      drawer: CustomDrawer(),
      body: Center(
        child: Text('Forum Diskusi akan ditampilkan disini'),
      ),
    );
  }
}