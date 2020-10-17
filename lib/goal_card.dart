import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'coolors.dart';

class GoalCard extends StatelessWidget {
  

  final String title;
  final String subtitle;
  final Icon icon;
  final bool isFilled;

  const GoalCard({Key key, this.title, this.subtitle, this.icon, this.isFilled}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final textColor = isFilled ? Colors.white : Colors.black;
    final subColor = isFilled ? Vx.gray200 : Vx.gray500;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            title
              .text
              .lg
              .light
              .color(subColor)
              .textStyle(context.captionStyle)
              .make(),
            subtitle
              .text
              .bold
              .color(textColor)
              .xl2
              .make(),
          ],
        ),
        icon
      ],
    )
    .box
    .color(isFilled ? blueish : Colors.white)
    .padding(EdgeInsets.symmetric(horizontal: 16, vertical: 32))
    .linearGradient(isFilled ? [blueish,lightBlueish] : [whiteColor,whiteColor])
    .rounded
    .border(color: blueish, width: isFilled ? 0 : 2)
    .shadowXl
    .make();
  }
}