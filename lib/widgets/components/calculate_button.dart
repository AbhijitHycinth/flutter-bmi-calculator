import 'package:bmi_calculator/styles.dart';
import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  final Function onPressed;
  final String label;

  const CalculateButton({
    Key key,
    @required this.label,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: kDecorationRoundedEdges,
        margin: EdgeInsets.only(top: 10),
        height: 60,
        width: double.infinity,
        child: FlatButton(
          onPressed: onPressed,
          color: kAccentColor,
          child: Text(
            label,
            style: kAgeStyle.copyWith(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.normal),
          ),
        ));
  }
}
