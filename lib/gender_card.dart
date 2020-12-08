import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'constants.dart';


class GenderCard extends StatelessWidget {
  GenderCard({this.icon, this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          //FontAwesomeIcons.mars,
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
