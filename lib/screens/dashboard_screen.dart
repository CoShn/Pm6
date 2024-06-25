import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/carousel_list.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'E-TRACER ALUMNI',
        ),
      ),
      drawer: CustomDrawer(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
                child: CarouselList(
            items: [
              'PEMBERITAHUAN TERBARU',
              'BERITA KAMPUS',
              'PELACAKAN KARIR ALUMNI',
              'UMPAN BALIK ALUMNI',
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}