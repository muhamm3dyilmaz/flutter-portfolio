import 'package:flutter/material.dart';

import 'my_page.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyPage()),
        );
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Opacity(
              opacity: 0.5,
              child: ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  color: Color.fromARGB(255, 82, 177, 255),
                  height: 270,
                ),
              ),
            ),
            ClipPath(
              clipper: WaveClipper(),
              child: Container(
                color: Color.fromARGB(255, 0, 71, 130),
                height: 250,
                alignment: Alignment.center,
                child: Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 60,
                    fontFamily: "Lobster",
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Center(
              //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 370),
              child: Text(
                "Muhammed Yılmaz's\nPortfolio",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontFamily: "Lobster",
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Tap to See Portfolio",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: "Lobster",
                ),
                textAlign: TextAlign.center,
              ),
              Icon(Icons.touch_app_rounded, color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    debugPrint(size.width.toString());
    var path = new Path();
    path.lineTo(0, size.height);

    var firstStart = Offset(size.width / 5, size.height);
    var firstEnd = Offset(size.width / 2.25, size.height - 50.0);

    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart =
        Offset(size.width - (size.width / 3.24), size.height - 105.0);
    var secondEnd = Offset(size.width, size.height - 10.0);

    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
