import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyPage extends StatelessWidget {
  static const routeName = '/my';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/developer.jpg',
              ),
              fit: BoxFit.cover)),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black45,
              Colors.blue.shade100,
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 50),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 75,
                      backgroundColor: Colors.blue.shade100,
                      child: CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage("assets/images/my.jpg"),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.all(36),
                  child: Center(
                    child: Text(
                      "Hi i am Muhammed Yılmaz.\nIn recent 3 years am interested in software. My adventure began with Web Developing in Kent Yazılım. As a same time i dived in Cyber Security. After finish courses and practising offensive security improved myself both branches. And i implemented my Web projects what i learned in Cyber Security. After all i met the Mobile Application Development. And decided to choice Flutter for work on it. Nowadays i look after Flutter.",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: FaIcon(
                          FontAwesomeIcons.linkedin,
                          color: Colors.blue,
                          size: 40,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: FaIcon(
                          FontAwesomeIcons.github,
                          color: Colors.black,
                          size: 40,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: FaIcon(
                          FontAwesomeIcons.instagram,
                          color: Colors.yellow,
                          size: 40,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
