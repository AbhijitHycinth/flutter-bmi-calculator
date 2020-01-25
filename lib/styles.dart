import 'package:flutter/material.dart';

///TextStyles
final kAgeStyle = TextStyle(fontStyle: FontStyle.normal, fontSize: 50);
final kSlabText = TextStyle(fontStyle: FontStyle.normal, fontSize: 30);
final kResultStyle = TextStyle(
    fontStyle: FontStyle.normal,
    fontSize: 40,
    color: kPositiveColor,
    fontWeight: FontWeight.w300);

///Colors
final kPositiveColor = Color(0xFF27EE12);
final kAccentColor = Colors.pink[800];
final kOverlayColor = Color(0x30880E4F);
final kUnderWeightColor = Color(0xFFE26A1C);
final kNormalColor = Colors.green;
final kOverWeightColor = Colors.green[200];
final kObeseColor = Colors.red[900];

///Decorations
final kDecorationRoundedEdges =
    BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)));
