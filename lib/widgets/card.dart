import 'package:flutter/material.dart';

class ClickableCard extends StatelessWidget {
  final IconData _icon;
  final String _text;
  final Function _onTap;
  final _selected;

  ClickableCard.withIcon(
    IconData icon,
    String text,
    Function onTap,
    bool selected,
  )   : _icon = icon,
        _text = text,
        _onTap = onTap,
        _selected = selected;

  Color _getCardColor() {
    return _selected ? Color(0xFF060933) : Color(0xFF060940);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: _getCardColor(),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: GestureDetector(
        onTap: () {
          _onTap(_text);
        },
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: <Widget>[Icon(_icon), SizedBox(height: 20), Text(_text)],
          ),
        ),
      ),
    );
  }
}
