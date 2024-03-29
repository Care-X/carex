import 'package:carex/theme/colors.dart';
import 'package:flutter/material.dart';

class LearnPage extends StatelessWidget {
  final VoidCallback openDrawer;

  const LearnPage({Key? key, required this.openDrawer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(
                Icons.menu_rounded,
                color: AppColors.darkBlue,
              ),
              onPressed: openDrawer,
            ),
            const Text(
              "Learn",
              style: TextStyle(
                color: AppColors.darkBlue,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              width: 50,
            )
          ],
        ),
      ),
      body: Container(),
    );
  }
}
