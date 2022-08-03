import 'package:carex/constants.dart';
import 'package:carex/theme/colors.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Profile',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 26,
          ),
        ),
        elevation: 0,
        actions: [
          InkWell(
            onTap: () {
              //send report to carex management, in case if you wand to changes to your profile
            },
            child: Container(
              padding: const EdgeInsets.only(right: kDefaultPadding / 2),
              child: Row(
                children: const [
                  Icon(Icons.edit),
                  kHalfWidthSizedBox,
                  Text(
                    'Edit',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
        backgroundColor: AppColors.skyBlue,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: kOtherColor,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 150,
                decoration: const BoxDecoration(
                  color: AppColors.skyBlue,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(kDefaultPadding * 2),
                    bottomLeft: Radius.circular(kDefaultPadding * 2),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      maxRadius: 50.0,
                      minRadius: 50.0,
                      backgroundColor: AppColors.white,
                      backgroundImage:
                          AssetImage('assets/images/ana_de_armas.jpeg'),
                    ),
                    kWidthSizedBox,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Ana De Armas',
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 20.0,
                          ),
                        ),
                        Text(
                          '@ana',
                          style: TextStyle(
                            color: AppColors.lightblack,
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  sizedBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      ProfileDetailsRow(title: 'First Name', value: 'Ana De'),
                      ProfileDetailsRow(title: 'Last Name', value: 'Armas'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      ProfileDetailsRow(
                          title: 'Date of Birth', value: '30 Apr 1988 (34)'),
                      ProfileDetailsRow(title: 'Sex', value: 'Female'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      ProfileDetailsRow(title: 'Blood Type', value: 'O+'),
                      ProfileDetailsRow(title: 'Wheelchair', value: '-'),
                    ],
                  ),
                  const ProfileDetailsColumn(
                      title: 'Email', value: 'anadearmas@gmail.com'),
                  const ProfileDetailsColumn(
                      title: 'Father Name', value: 'Ramón'),
                  const ProfileDetailsColumn(
                      title: 'Mother Name', value: 'Ana'),
                  const ProfileDetailsColumn(title: 'Spouse Name', value: '-'),
                  const ProfileDetailsColumn(
                      title: 'Emergency Contact Number',
                      value: '(760)364-6964'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileDetailsRow extends StatelessWidget {
  const ProfileDetailsRow({Key? key, required this.title, required this.value})
      : super(key: key);
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        right: kDefaultPadding,
        left: kDefaultPadding / 4,
        top: kDefaultPadding / 2,
      ),
      width: MediaQuery.of(context).size.width / 2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: kTextLightColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 15.0,
                    ),
              ),
              kHalfSizedBox,
              Text(
                value,
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: kTextBlackColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 15.0,
                    ),
              ),
              kHalfSizedBox,
              SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                child: const Divider(
                  thickness: 1.0,
                ),
              ),
            ],
          ),
          const Icon(
            Icons.lock_outline_rounded,
            color: Color(0xFFA5A5A5),
            size: 20.0,
          ),
        ],
      ),
    );
  }
}

class ProfileDetailsColumn extends StatelessWidget {
  const ProfileDetailsColumn(
      {Key? key, required this.title, required this.value})
      : super(key: key);
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: kTextLightColor,
                    fontSize: 15.0,
                  ),
            ),
            kHalfSizedBox,
            Text(
              value,
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                  color: kTextBlackColor,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600),
            ),
            kHalfSizedBox,
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.2,
              child: const Divider(
                thickness: 1.0,
              ),
            )
          ],
        ),
        const Icon(
          Icons.lock_outline_rounded,
          color: Color(0xFFA5A5A5),
          size: 20.0,
        ),
      ],
    );
  }
}
