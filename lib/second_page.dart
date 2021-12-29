import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Text(
          'Icon Test',
          style: TextStyle(fontSize: 30),
        ),
        FaIcon(
          FontAwesomeIcons.divide,
          color: Colors.red,
        ),
        Icon(
          Icons.add,
          color: Colors.black,
        ),
        FaIcon(
          FontAwesomeIcons.times,
          color: Colors.purple,
        ),
        FaIcon(
          FontAwesomeIcons.minus,
          color: Colors.amber,
        ),
      ]),
    );
  }
}
