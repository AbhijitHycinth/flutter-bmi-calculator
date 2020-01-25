import 'package:flutter/material.dart';

class ClickableCard extends StatelessWidget {
  const ClickableCard({
    Key key,
    @required Function onTap,
    @required String text,
    @required IconData icon,
  })  : _onTap = onTap,
        _text = text,
        _icon = icon,
        super(key: key);

  final Function _onTap;
  final String _text;
  final IconData _icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _onTap(_text);
      },
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Icon(_icon, size: 80.0),
            SizedBox(height: 5),
            Text(_text)
          ],
        ),
      ),
    );
  }
}
