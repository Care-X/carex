import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerItem {
  final String title;
  final IconData icon;

  const DrawerItem({
    required this.title,
    required this.icon,
  });
}

class DrawerItems {
  static const home = DrawerItem(
    title: 'Home',
    icon: Icons.home_rounded,
  );
  static const learn = DrawerItem(
    title: 'Learn',
    icon: FontAwesomeIcons.book,
  );
  static const doctor = DrawerItem(
    title: 'Doctors',
    icon: FontAwesomeIcons.userDoctor,
  );
  static const messages = DrawerItem(
    title: 'Messages',
    icon: Icons.message_rounded,
  );
  static const settings = DrawerItem(
    title: 'Settings',
    icon: Icons.settings_rounded,
  );

  static List<DrawerItem> all = [
    home,
    learn,
    doctor,
    messages,
    settings,
  ];
}
