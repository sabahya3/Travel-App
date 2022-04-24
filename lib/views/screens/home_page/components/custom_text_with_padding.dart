import 'package:flutter/material.dart';
import 'package:travel_ui/utils/constants.dart';

class CustomTextWithPadding extends StatelessWidget {
  CustomTextWithPadding(
      {Key? key,
      required this.fontSize,
      required this.height,
      required this.txt,
      required this.txtColor,
      required this.width})
      : super(key: key);

  double height;
  double width;
  double fontSize;
  String txt;
  Color txtColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: width * 0.08, top: height * 0.03),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          txt,
          style: getTxtStyle(color: txtColor, fontSize: fontSize),
        ),
      ),
    );
  }
}
