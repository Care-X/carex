import 'package:flutter/material.dart';

class SmallDoctorCard extends StatelessWidget {
  const SmallDoctorCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Container(
        width: 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.blue[100],
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  color: Colors.blue[200],
                  child: Image.asset(
                    'assets/images/doc-male.png',
                    height: 60,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow[800],
                ),
                const Text('5.0')
              ],
            ),
            const Text(
              'Dr. John Doe',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
            ),
            const Text('Therapist, 7 y.e.',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13)),
          ],
        ),
      ),
    );
  }
}
