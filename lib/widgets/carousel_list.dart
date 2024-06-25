import 'package:flutter/material.dart';
import '../screens/content_detail.dart';

class CarouselList extends StatefulWidget {
  final List<String> items;

  CarouselList({required this.items});

  @override
  _CarouselListState createState() => _CarouselListState();
}

class _CarouselListState extends State<CarouselList> {
  int? _tappedIndex;

  void _navigateToDetail(BuildContext context, String title) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ContentDetailScreen(
              title: title,
              content: 'INI KONTEN UNTUK $title',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: widget.items.length,
      itemBuilder: (context, index) {
        bool isTapped = _tappedIndex == index;
        return GestureDetector(
          onTapDown: (_) => setState(() => _tappedIndex = index),
          onTapUp: (_) {
            setState(() => _tappedIndex = null);
            _navigateToDetail(context, widget.items[index]);
          },
          onTapCancel: () => setState(() => _tappedIndex = null),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 200),
            width: isTapped ? 220 : 200,
            height: 178.0,
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: isTapped ? Colors.blueAccent.withOpacity(0.7) : Colors.lightBlue[200],
              borderRadius: BorderRadius.circular(36.0),
              boxShadow: isTapped
                  ? [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(0, 10),
                ),
              ]
                  : [],
            ),
            child: Center(
              child: Text(
                widget.items[index],
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.center,
                ),
              ),
            ),
        );
      },
    );
  }
}