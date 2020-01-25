import 'package:bmi_calculator/customIcons/gender_icons.dart';
import 'package:bmi_calculator/widgets/components/card.dart';
import 'package:bmi_calculator/widgets/components/clickable_card.dart';
import 'package:bmi_calculator/widgets/components/text_slider.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String _selectedGender;
  double selectedAge = 20;

  void setGender(String gender) {
    setState(() {
      _selectedGender = gender;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Expanded(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                child: CustomCard(
                  child: ClickableCard(
                      onTap: this.setGender,
                      text: "male",
                      icon: GenderIcons.male),
                  selected: _selectedGender == "male",
                ),
              ),
              Expanded(
                child: CustomCard(
                  child: ClickableCard(
                      onTap: this.setGender,
                      text: "female",
                      icon: GenderIcons.female),
                  selected: _selectedGender == "female",
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: CustomCard(
              child: TextSlider(
            label: "AGE",
            value: selectedAge,
            onChange: (age) {
              setState(() {
                selectedAge = age;
              });
            },
          )),
        ),
        Expanded(
            child: CustomCard(
          child: SizedBox(),
        )),
      ],
    );
  }
}
