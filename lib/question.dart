import 'package:flutter/material.dart';

class question extends StatelessWidget {

  String text;
  question(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(this.text);
  }
}