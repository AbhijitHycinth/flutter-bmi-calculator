import 'package:bmi_calculator/customIcons/gender_icons.dart';
import 'package:bmi_calculator/styles.dart';
import 'package:bmi_calculator/widgets/components/card.dart';
import 'package:bmi_calculator/widgets/components/clickable_card.dart';
import 'package:bmi_calculator/widgets/components/custom_counter.dart';
import 'package:bmi_calculator/widgets/components/text_slider.dart';
import 'package:bmi_calculator/widgets/screen/result_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String _selectedGender;
  double selectedAge = 20;
  int weight = 20;
  int height = 130;

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
                      text: "female",
                      icon: GenderIcons.male),
                  selected: _selectedGender == "female",
                ),
              ),
              Expanded(
                child: CustomCard(
                  child: ClickableCard(
                      onTap: this.setGender,
                      text: "male",
                      icon: GenderIcons.female),
                  selected: _selectedGender == "male",
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
            child: Row(
          children: <Widget>[
            Expanded(
              child: CustomCard(
                child: CustomCounter(
                  label: "weight",
                  value: weight,
                  onChange: (value) {
                    setState(() {
                      weight = value;
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: CustomCard(
                child: CustomCounter(
                  label: "height",
                  value: height,
                  onChange: (value) {
                    setState(() {
                      height = value;
                    });
                  },
                ),
              ),
            ),
          ],
        )),
        Container(
            decoration: kDecorationRoundedEdges,
            margin: EdgeInsets.only(top: 10),
            height: 60,
            width: double.infinity,
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPage(
                              height: height,
                              weight: weight,
                            )));
              },
              color: kAccentColor,
              child: Text(
                "CALCULATE",
                style: kAgeStyle.copyWith(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.normal),
              ),
            ))
      ],
    );
  }
}
