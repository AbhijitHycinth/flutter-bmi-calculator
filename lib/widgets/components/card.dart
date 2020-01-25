import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final bool selected;

  CustomCard({@required this.child, this.selected = false});
  Color _getCardColor() {
    return selected ? Color(0xFF0B0610) : Color(0xFF0B0624);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(7),
        decoration: BoxDecoration(
            color: _getCardColor(),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: child);
  }
}
