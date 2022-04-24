import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_ui/utils/color_palete.dart';

class SearchBarAndIcon extends StatelessWidget {
  SearchBarAndIcon({Key? key, required this.height, required this.width})
      : super(key: key);
  double height;
  double width;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: height * 0.03),
      child: SizedBox(
        height: height * 0.10,
        width: width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.06,
              width: width * 0.67,
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide.none),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Search your nearby places',
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.black,
                    )),
              ),
            ),
            SizedBox(
              width: width * 0.03,
            ),
            Container(
              width: width * 0.12,
              height: height * 0.06,
              child: const Icon(
                FontAwesomeIcons.sliders,
                size: 22,
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                color: btnColor,
                borderRadius: BorderRadius.circular(25),
              ),
            )
          ],
        ),
      ),
    );
  }
}
