import 'package:flutter/material.dart';

import '../utilities/show_success_dialog.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key, required this.changePage}) : super(key: key);
  final void Function(int) changePage;

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    bool _validate = false;
    TextEditingController _title = new TextEditingController();
    String topic = 'Select Topic';
    var topicItems = [
      'Android App',
      'Ios App',
      'Web Development',
      'Web Design',
      'Hosting',
      'Software Development'
    ];
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
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 55,
                          backgroundImage: AssetImage("assets/logo.png"),
                        ),
                      ),
                      Card(
                        color: Colors.black38,
                        elevation: 55,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Sidney Richards',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '+263 71 376 4301 / +263 774 935 699',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'sidyrich@gmail.com',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                controller: _title,
                                decoration: InputDecoration(
                                  fillColor: Colors.white70,
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  labelText: 'Enter Subject Title',
                                  errorText:
                                      _validate ? "Field Cant Be Empty" : null,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 383,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white70,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                padding: EdgeInsets.all(10),
                                child: DropdownButton(
                                    iconEnabledColor: Colors.orange,
                                    isExpanded: true,
                                    hint: Text(topic),
                                    underline:
                                        Container(color: Colors.transparent),
                                    items: topicItems.map((String items) {
                                      return DropdownMenuItem(
                                        value: items,
                                        child: Text(items),
                                      );
                                    }).toList(),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        topic = newValue!;
                                      });
                                    }),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                keyboardType: TextInputType.multiline,
                                maxLines: 8,
                                controller: _title,
                                decoration: InputDecoration(
                                  fillColor: Colors.white70,
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  labelText: 'Enter Subject Title',
                                  errorText:
                                      _validate ? "Field Cant Be Empty" : null,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              child: isLoading
                                  ? CircularProgressIndicator(
                                      color: Colors.white)
                                  : Text(
                                      'Register',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                              onPressed: () async {
                                setState(() {
                                  isLoading = true;
                                });
                                Future.delayed(Duration(seconds: 6), () {
                                  setState(() async {
                                    isLoading = false;
                                    await showSuccessDialog(context,
                                        "Thank You. We'll Be Reaching Out Soon");
                                  });
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 50, vertical: 8),
                                  textStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ),
                            SizedBox(height: 15),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
