import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';

class NewsEventsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Berita & Acara'),
        backgroundColor: Colors.lightBlue[200],
      ),
      drawer: CustomDrawer(),
      body: Center(
        child: Text('Acara dan jadwal reuni akan ditampilkan disini.'),
      ),
    );
  }
}