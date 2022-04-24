import 'package:flutter/material.dart';
import 'package:travel_ui/utils/constants.dart';

class PopularAndViewAll extends StatelessWidget {
  PopularAndViewAll({Key? key, required this.height, required this.width})
      : super(key: key);
  double height;
  double width;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: width * 0.08,
        right: width * 0.08,
        top: height * 0.03,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Popular',
            style: getTxtStyle(fontSize: 25),
          ),
          Text(
            'View All',
            style: getTxtStyle(color: Colors.grey, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
