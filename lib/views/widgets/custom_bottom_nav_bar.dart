import 'package:flutter/material.dart';
import 'package:travel_ui/models/nav_bar_model.dart';
import 'package:travel_ui/utils/color_palete.dart';
import 'package:travel_ui/utils/constants.dart';

class CustomBottomNavBar extends StatefulWidget {
  CustomBottomNavBar({Key? key,required this.navBarIndex}) : super(key: key);

late int navBarIndex;

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    double width=getWidth(context);
    double height=getHeight(context);
    return  Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(
              4,
              (index) => Expanded(
                    flex: index ==widget. navBarIndex ? 2 : 1,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          widget. navBarIndex = index;
                        });
                      },
                      child: AnimatedContainer(
                        curve: Curves.easeIn,
                        duration: const Duration(milliseconds: 500),
                        decoration: BoxDecoration(
                            color: index == widget. navBarIndex
                                ? const Color(0xffb8d4d9).withOpacity(0.7)
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(15)),
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(15),
                        margin: EdgeInsets.symmetric(
                          horizontal: width * 0.03,
                          vertical: height * 0.01,
                        ),
                        height: kBottomNavigationBarHeight,
                        width:
                            index == widget. navBarIndex ? width * 0.30 : width * 0.20,
                        child: index == widget. navBarIndex
                            ? Row(
                                children: [
                                  Icon(
                                    navIcons[index].icon,
                                    color: btnColor,
                                  ),
                                  SizedBox(
                                    width: width * 0.02,
                                  ),
                                  Expanded(
                                    child: Text(
                                      navIcons[index].label,
                                      style: getTxtStyle(color: btnColor),
                                    ),
                                  )
                                ],
                              )
                            : Icon(
                                navIcons[index].icon,
                                color: Colors.grey,
                              ),
                      ),
                    ),
                  )),
        );
  }
}