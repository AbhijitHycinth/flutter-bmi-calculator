import 'package:bmi_calculator/customIcons/gender_icons.dart';
import 'package:bmi_calculator/widgets/card.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String _gender;

  void setGender(String gender) {
    setState(() {
      _gender = gender;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
                child: ClickableCard.withIcon(
              GenderIcons.male,
              "male",
              this.setGender,
              _gender == "male",
            )),
            Expanded(
                child: ClickableCard.withIcon(
              GenderIcons.female,
              "female",
              this.setGender,
              _gender == "female",
            )),
          ],
        )
      ],
    );
  }
}
