import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget {

  // ignore: non_constant_identifier_names
  var item;

  Container cont;

  MyScaffold.column(this.item);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
			appBar: AppBar(title: Text("this is a title"),),
			body: item,
		);
  }
}