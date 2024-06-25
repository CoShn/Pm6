import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';

class JobOpeningsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lowongan Kerja'),
        backgroundColor: Colors.lightBlue[200],
      ),
      drawer: CustomDrawer(),
      body: Center(
        child: Text('Lowongan kerja akan ditampilkan disini'),
      ),
    );
  }
}