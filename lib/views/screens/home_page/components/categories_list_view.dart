import 'package:flutter/material.dart';
import 'package:travel_ui/models/categories.dart';
import 'package:travel_ui/utils/constants.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({Key? key, required this.height, required this.width})
      : super(key: key);
  double width;
  double height;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: width * 0.08,
        top: height * 0.03,
      ),
      child: SizedBox(
        height: height * 0.10,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return Container(
              padding:  EdgeInsets.only(left: width*0.02,right: width*0.01,top: width*0.02,bottom: width*0.02),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              margin: EdgeInsets.only(right: width * 0.06),
              width: width * 0.40,
              height: height * 0.8,
              child: Row(
                children: [
                  Container(
                    width: width * 0.15,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(categories[index].img)),
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Text(categories[index].label),
              
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
