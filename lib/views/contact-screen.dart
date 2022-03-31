import 'package:flutter/material.dart';

import '../main.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key, required this.changePage}) : super(key: key);
  final void Function(int) changePage;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('$contact Page', style: Theme.of(context).textTheme.headline6),
          ElevatedButton(
            onPressed: () => changePage(0),
            child: const Text('Switch to Home Page'),
          )
        ],
      ),
    );
  }
}
