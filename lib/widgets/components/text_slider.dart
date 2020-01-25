import 'package:bmi_calculator/styles.dart';
import 'package:flutter/material.dart';

class TextSlider extends StatelessWidget {
  final String label;
  final Function onChange;
  final double value;

  TextSlider({
    @required this.value,
    @required this.label,
    @required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          label,
          style: kAgeStyle,
        ),
        SliderTheme(
            data: SliderThemeData(
              activeTrackColor: Colors.pink[400],
              inactiveTrackColor: Colors.grey[600],
              thumbColor: kAccentColor,
              overlayColor: kOverlayColor,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12),
            ),
            child: Slider(onChanged: onChange, value: value, min: 1, max: 100)),
        Text(
          value.toStringAsFixed(0),
          style: kAgeStyle.copyWith(fontSize: 25),
        ),
      ],
    );
  }
}
