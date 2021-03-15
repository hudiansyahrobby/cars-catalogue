import 'package:flutter/material.dart';

class Paragraph extends StatelessWidget {
  final String text;

  const Paragraph({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0),
      child: Text(
        text,
        style: new TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, height: 1.3),
      ),
    );
  }
}
