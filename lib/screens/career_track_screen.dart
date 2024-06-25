import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';

class CareerTrackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jejak Karir'),
        backgroundColor: Colors.lightBlue[200],
      ),
      drawer: CustomDrawer(),
      body: Center(
        child: Text('Riwayat Karir akan ditampilkan disini.'),
      ),
    );
  }
}