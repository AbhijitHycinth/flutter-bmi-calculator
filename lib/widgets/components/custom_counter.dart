import 'package:bmi_calculator/styles.dart';
import 'package:flutter/material.dart';

const Map<String, Map<String, String>> units = {
  "height": {"imperical": "cm"},
  "weight": {"imperical": "kg"}
};

class CustomCounter extends StatelessWidget {
  final String label;
  final int value;
  final Function onChange;
  final String scale;
  static const int kMinValue = 0;

  CustomCounter(
      {@required this.label,
      this.value = 20,
      @required this.onChange,
      this.scale = "imperical"});

  void _decrement() {
    if (value == kMinValue) {
      return;
    }
    onChange(value - 1);
  }

  void _increment() {
    onChange(value + 1);
  }

  @override
  Widget build(BuildContext context) {
    String unit = units[label][scale];
    return Column(
      children: <Widget>[
        Text(label, style: kAgeStyle.copyWith(fontSize: 25)),
        Text('$value $unit', style: kAgeStyle.copyWith(fontSize: 35)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            buildRawMaterialButton(
              onPressed: _decrement,
              iconData: Icons.remove,
            ),
            buildRawMaterialButton(
              onPressed: _increment,
              iconData: Icons.add,
            ),
          ],
        )
      ],
    );
  }

  RawMaterialButton buildRawMaterialButton(
      {Function onPressed, IconData iconData}) {
    return RawMaterialButton(
        onPressed: onPressed,
        enableFeedback: false,
        shape: CircleBorder(),
        fillColor: Colors.grey[600],
        child: Icon(
          iconData,
          color: Colors.white,
          size: 40,
        ));
  }
}
