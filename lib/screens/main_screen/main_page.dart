import 'package:carex/models/drawer_item.dart';
import 'package:carex/screens/drawer/drawer_page.dart';
import 'package:carex/screens/home/home_page.dart';
import 'package:carex/screens/learn/learn_page.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late double xOffset = 0;
  late double yOffset = 0;
  late double scaleFactor = 1;
  late bool isDrawerOpen = false;
  DrawerItem item = DrawerItems.home;
  //late Size size = MediaQuery.of(context).size;

  @override
  void initState() {
    super.initState();
    closeDrawer();
  }

  void openDrawer() => setState(() {
        xOffset = 200;
        yOffset = 150;
        scaleFactor = 0.7;
        isDrawerOpen = true;
      });

  void closeDrawer() => setState(() {
        xOffset = 0;
        yOffset = 0;
        scaleFactor = 1;
        isDrawerOpen = false;
      });
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CareX',
      home: Scaffold(
        body: Stack(
          children: [
            DrawerPage(
              onSelectedItem: (item) {
                setState(() {
                  this.item = item;
                  closeDrawer();
                });
              },
            ),
            curretPage(),
          ],
        ),
      ),
    );
  }

  Widget curretPage() {
    return WillPopScope(
      onWillPop: () async {
        if (isDrawerOpen) {
          closeDrawer();
          return false;
        } else {
          return true;
        }
      },
      child: GestureDetector(
        onTap: closeDrawer,
        child: AnimatedContainer(
          transform: Matrix4.translationValues(xOffset, yOffset, 0)
            ..scale(scaleFactor),
          duration: const Duration(milliseconds: 250),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(isDrawerOpen ? 40 : 0),
            child: AbsorbPointer(
              absorbing: isDrawerOpen,
              child: Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 60,
                    blurRadius: 100,
                    offset: const Offset(0, 0),
                  ),
                ]),
                child: getCurrentPage(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget getCurrentPage() {
    switch (item) {
      // case DrawerItems.home:
      //   return HomePage(openDrawer: openDrawer);
      case DrawerItems.tips:
        return LearnPage(openDrawer: openDrawer);
      // case DrawerItems.doctor:
      //   return LearnPage(openDrawer: openDrawer);
      // case DrawerItems.messages:
      //   return LearnPage(openDrawer: openDrawer);
      // case DrawerItems.settings:
      //   return LearnPage(openDrawer: openDrawer);
      default:
        return HomePage(openDrawer: openDrawer);
    }
  }
}