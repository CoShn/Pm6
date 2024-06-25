import 'package:flutter/material.dart';
import 'screens/dashboard_screen.dart';

void main () => runApp(ETracerAlumniApp());

class ETracerAlumniApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Tracer Alumni',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'SFUIText-Bold',
      ),
      home: DashboardScreen(),
    );
  }
}