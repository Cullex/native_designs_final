import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key, required this.changePage}) : super(key: key);
  final void Function(int) changePage;

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/img_5.png",
              ),
              fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: ListView(
            children: [
              Container(
                height: 690,
                child: Card(
                  color: Colors.black38,
                  elevation: 55,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
