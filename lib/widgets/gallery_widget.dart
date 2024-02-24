import 'package:flutter/material.dart';

class GalleryWidget extends StatelessWidget {
  const GalleryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 150,
              child: Image.asset(
                '../../assets/images/C&C.jpg',
                width: 200,
                height: 150,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 200,
              height: 150,
              child: Image.asset(
                '../../assets/images/Game Development Department.jpg',
                width: 200,
                height: 150,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 150,
              child: Image.asset(
                '../../assets/images/Gourmet Research Society.jpg',
                width: 200,
                height: 150,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 200,
              height: 150,
              child: Image.asset(
                '../../assets/images/Pandemonium Society.jpg',
                width: 200,
                height: 150,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 150,
              child: Image.asset(
                '../../assets/images/Sweets Club.jpg',
                width: 200,
                height: 150,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 200,
              height: 150,
              child: Image.asset(
                '../../assets/images/Tea Party.jpg',
                width: 200,
                height: 150,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
