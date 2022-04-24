import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavBarModel{
  late IconData icon;
  late String label;
  NavBarModel({required this.icon,required this.label});
}

List<NavBarModel>navIcons=[
  NavBarModel(icon: Icons.home_outlined,label: 'home'),
  NavBarModel(icon: FontAwesomeIcons.bell,label: 'latest'),
  NavBarModel(icon: FontAwesomeIcons.heart,label: 'favourite'),
  NavBarModel(icon: FontAwesomeIcons.user,label: 'profile'),
];