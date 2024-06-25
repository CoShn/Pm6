import 'package:flutter/material.dart';
import '../screens/dashboard_screen.dart';
import '../screens/profile_list_screen.dart';
import '../screens/news_events_screen.dart';
import '../screens/career_track_screen.dart';
import '../screens/job_openings_screen.dart';
import '../screens/discussion_forum_screen.dart';
import '../screens/settings_screen.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('E-TRACER ALUMNI'),
            decoration: BoxDecoration(
              color: Colors.lightBlue[200],
            ),
          ),
          CustomDrawerTile(
            title: 'HALAMAN UTAMA',
            screen: DashboardScreen(),
          ),
          CustomDrawerTile(
            title: 'DAFTAR ALUMNI',
            screen: ProfileScreen(),
          ),
          CustomDrawerTile(
            title: 'ACARA & REUNI',
            screen: NewsEventsScreen(),
          ),
          CustomDrawerTile(
            title: 'JEJAK KARIR',
            screen: CareerTrackScreen(),
          ),
          CustomDrawerTile(
            title: 'LOWONGAN KERJA',
            screen: JobOpeningsScreen(),
          ),
          CustomDrawerTile(
            title: 'FORUM DISKUSI',
            screen: DiscussionForumScreen(),
          ),
          CustomDrawerTile(
            title: 'PENGATURAN',
            screen: SettingsScreen(),
          ),
        ],
      ),
    );
  }
}

class CustomDrawerTile extends StatefulWidget {
  final String title;
  final Widget screen;

  CustomDrawerTile ({required this.title, required this.screen});

  @override
  _CustomDrawerTileState createState () => _CustomDrawerTileState();
}

class _CustomDrawerTileState extends State<CustomDrawerTile> {
  bool isTapped = false;

  @override
  Widget build (BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() {
        isTapped = true;
      }),
      onTapUp: (_) {
        setState(() {
          isTapped = false;
        });
      Navigator.pop(context);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => widget.screen),
      );
  },
  onTapCancel: () => setState(() {
    isTapped = false;
  }),
      child: AnimatedContainer(
        duration: Duration(milliseconds:2000),
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: isTapped ? Colors.blueAccent.withOpacity(0.1) : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
          boxShadow: isTapped
            ? [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: Offset(0, 10),
              )
          ]
            : [],
        ),
        child: ListTile(
          title: Text(widget.title),
        ),
      ),
    );
  }
}