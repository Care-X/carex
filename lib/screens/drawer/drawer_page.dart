import 'package:carex/models/drawer_item.dart';
import 'package:carex/theme/colors.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  final ValueChanged<DrawerItem> onSelectedItem;
  const DrawerPage({
    Key? key,
    required this.onSelectedItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.skyBlue,
      padding: const EdgeInsets.only(top: 50, bottom: 70, left: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundColor: AppColors.white,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'John Doe',
                    style: TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Active Status',
                    style: TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
            children: DrawerItems.all
                .map((item) => GestureDetector(
                      onTap: () {
                        onSelectedItem(item);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              item.icon,
                              color: AppColors.white,
                              size: 25,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              item.title,
                              style: const TextStyle(
                                  color: AppColors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ))
                .toList(),
          ),
          Row(
            children: const [
              Icon(
                Icons.logout_rounded,
                color: AppColors.white,
              ),
              Text(
                'Log out',
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
