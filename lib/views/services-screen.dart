import 'package:flutter/material.dart';

import '../main.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          Text('$services Page', style: Theme.of(context).textTheme.headline6),
    );
  }
}
