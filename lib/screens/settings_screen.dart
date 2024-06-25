import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengaturan'),
        backgroundColor: Colors.lightBlue[200],
      ),
      drawer: CustomDrawer(),
      body: Center(
        child: Text('Pengaturan akan ditampilkan disini'),
      ),
    );
  }
}