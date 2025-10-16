import 'package:clean_code/Presentation/View/Profile/profilepage.dart';
import 'package:flutter/material.dart';
import 'package:clean_code/Presentation/View/Home/homepage.dart';
import 'package:clean_code/Presentation/View/Setting/settingpage.dart';

class ItemMenu {
  final String title;
  final IconData icon;
  final Color color;
  final Widget Function() builder;

  ItemMenu({
    required this.title,
    required this.icon,
    required this.color,
    required this.builder,
  });
}

final List<ItemMenu> menuItems = [
  ItemMenu(
    title: "Home Page",
    icon: Icons.home,
    color: Colors.redAccent,
    builder: () => Homepage(),
  ),
  ItemMenu(
    title: "Profile Page",
    icon: Icons.person,
    color: Colors.blueAccent,
    builder: () => Profilepage(),
  ),
  ItemMenu(
    title: "Settings Page",
    icon: Icons.settings,
    color: Colors.cyan,
    builder: () => SettingPage(),
  ),
];
