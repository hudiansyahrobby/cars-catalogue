import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String text;

  const Heading({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0),
      child: Text(
        text,
        textAlign: TextAlign.left,
        style: new TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
    );
  }
}
