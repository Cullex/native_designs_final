import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 80),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 70,
            backgroundColor: Colors.black12,
            backgroundImage: AssetImage("assets/logo.png"),
          ),
        ),
        Container(
          height: 505,
          child: Card(
            color: Colors.black26,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            elevation: 15,
            child: ListView(
              children: [
                Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Welcome To Native Designs Zw",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.orange),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "We Are Fond Of Solutions That Fit Into Your Palms",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15, color: Colors.orange),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Imagine It! We Build It!!!",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.orange),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Got An App Idea That You'd To Bring To Life? Reach Out",
                      style: TextStyle(fontSize: 15, color: Colors.orange),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "About Us",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.orange),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Founded in 2015 by web and mobile applications developer Sidney Richards. "
                      "Native Designs Zw has grown by leaps and bounds churning out solutions "
                      "through web development and software development ",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15, color: Colors.orange),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "About Founder",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.orange),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "My name is Sidney and I'm a Software Developer."
                      " I have a BSc Honours Degree in Computer Science from "
                      "the Midlands State University and I also hold an android development certificate from Android ATC",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15, color: Colors.orange),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "I am an enthusiastic,"
                        " problem solver with absolute passion for development, "
                        "my skill set is evidence to this. I play other roles well outside than pure development,"
                        " such roles include documentation, client support, drawing application test plans,"
                        " install-configure-maintain applications, and so on "
                        "Being a developer is a profession that I love to exercise,"
                        " because there is nothing more rewarding than contributing to the creation of something"
                        " that will be useful and will bring a lot of practicality to people's daily lives. "
                        "Motivated by this desire to provide a better digital experience to my partners,"
                        " I always seek to apply the best and most innovative mobile development of today,"
                        " in a constant search for professional perfection.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15, color: Colors.orange),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
