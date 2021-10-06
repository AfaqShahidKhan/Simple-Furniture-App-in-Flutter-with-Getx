import 'package:flutter/material.dart';
import 'package:furniture_app/Utilities/connstants.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    this.fillColor,
    this.isSelected = false,
  }) : super(key: key);
  final Color? fillColor;
  final bool? isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          // left and right padding = 8.0
          horizontal: kDefaultPadding / 2.5),
      padding: EdgeInsets.all(3),
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected! ? Color(0xff707070) : Colors.transparent,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: fillColor,
        ),
      ),
    );
  }
}
