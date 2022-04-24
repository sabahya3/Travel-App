import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_ui/utils/color_palete.dart';
import 'package:travel_ui/utils/constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({Key? key, required this.height, required this.width})
      : super(key: key);
  double width;
  double height;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: bgColor,
      title: Padding(
        padding: EdgeInsets.only(top: height * 0.02, left: width * 0.05),
        child: Row(
          children: [
            Icon(
              FontAwesomeIcons.locationDot,
              color: btnColor,
              size: 25,
            ),
            SizedBox(
              width: width * 0.03,
            ),
            Text('Hong Kong',style: getTxtStyle(color: btnColor),)
          ],
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(top: height * 0.02, right: width * 0.05),
          child: const CircleAvatar(
            backgroundImage: NetworkImage(imgUrl),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height * 0.10);
}
