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
  static const tips = DrawerItem(
    title: 'Tips',
    icon: FontAwesomeIcons.lightbulb,
  );
  static const sos = DrawerItem(
    title: 'sos',
    icon: Icons.sos,
  );
  static const settings = DrawerItem(
    title: 'Settings',
    icon: Icons.settings_rounded,
  );
  static const feedback = DrawerItem(
    title: 'Feedback',
    icon: Icons.message_outlined,
  );

  static List<DrawerItem> all = [
    home,
    tips,
    sos,
    feedback,
    settings,
  ];
}
