import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_ui/models/park.dart';
import 'package:travel_ui/utils/color_palete.dart';
import 'package:travel_ui/utils/constants.dart';

class BigCardList extends StatelessWidget {
  const BigCardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = getWidth(context);
    double height = getHeight(context);
    return Padding(
      padding: EdgeInsets.only(
        left: width * 0.08,
        top: height * 0.03,
      ),
      child: SizedBox(
        height: height * 0.40,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: 4,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(width * 0.03),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(25)),
              margin: EdgeInsets.only(right: width * 0.09),
              width: width * 0.60,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color:btnColor,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(parks[index].img)),
                        borderRadius: BorderRadius.circular(25)),
                    height: height * 0.25,
                    width: width * 0.55,
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                          left: width * 0.03, top: height * 0.02),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            parks[index].label,
                            style: getTxtStyle(),
                          ))),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.03, vertical: height * 0.02),
                    child: Row(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              FontAwesomeIcons.locationDot,
                              color: btnColor,
                              size: 18,
                            ),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Text(
                              'Hong Kong',
                              style: getTxtStyle(fontSize: 12, color: btnColor),
                            )
                          ],
                        ),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              FontAwesomeIcons.star,
                              color: Colors.yellow,
                              size: 18,
                            ),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Text(
                              '4/5 Rating',
                              style: getTxtStyle(fontSize: 12, color: btnColor),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
