import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

	Function btnPressed;
	String text;

	MyButton(this.btnPressed, this.text);

  	@override
  	Widget build(BuildContext context) {

		ButtonStyle bs = ButtonStyle(
			backgroundColor: MaterialStateProperty.all(Colors.indigo.shade900),
			foregroundColor: MaterialStateProperty.all(Colors.cyan.shade200),
		);

		ElevatedButton eb = ElevatedButton(
			style: bs,
			onPressed: btnPressed,
			child: Text(this.text),
		);
		Padding p = Padding(padding: EdgeInsets.all(10), child: eb,);

    	return Container(
			width: double.infinity,
			child: p,
		);
  	}
}