import 'package:flutter/material.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img_2.png"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.orange.withOpacity(0.06), BlendMode.darken),
          ),
        ),
        child: Container(
          height: 690,
          child: Card(
              color: Colors.black38,
              elevation: 85,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35),
              ),
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  Column(
                    children: [
                      Text(
                        "Android Development",
                        style: TextStyle(
                            color: Colors.orange, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/android_logo.png",
                                ),
                                fit: BoxFit.fill),
                          ),
                        ),
                        color: Colors.transparent,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "ios Development",
                        style: TextStyle(
                            color: Colors.orange, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/ios.png",
                                ),
                                fit: BoxFit.fill),
                          ),
                        ),
                        color: Colors.transparent,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Web Development",
                        style: TextStyle(
                            color: Colors.orange, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/web_app.png",
                                ),
                                fit: BoxFit.fill),
                          ),
                        ),
                        color: Colors.transparent,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Systems Development",
                        style: TextStyle(
                            color: Colors.orange, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/systems_dev.jpg",
                                ),
                                fit: BoxFit.fill),
                          ),
                        ),
                        color: Colors.transparent,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Web Design",
                        style: TextStyle(
                            color: Colors.orange, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/web_design.jpg",
                                ),
                                fit: BoxFit.fill),
                          ),
                        ),
                        color: Colors.transparent,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Email Services",
                        style: TextStyle(
                            color: Colors.orange, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/email_logo.png",
                                ),
                                fit: BoxFit.fill),
                          ),
                        ),
                        color: Colors.transparent,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Domain Registration",
                        style: TextStyle(
                            color: Colors.orange, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/img_3.png",
                                ),
                                fit: BoxFit.fill),
                          ),
                        ),
                        color: Colors.transparent,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "ICT Consultation",
                        style: TextStyle(
                            color: Colors.orange, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/img_5.png",
                                ),
                                fit: BoxFit.fill),
                          ),
                        ),
                        color: Colors.transparent,
                      ),
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
