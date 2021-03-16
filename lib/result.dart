import 'package:flutter/material.dart';
import 'package:flutter_first_app/quiz_scaffold.dart';

class result extends StatelessWidget {

	final int totalScore;
  final Function resetFunction;

	result(this.totalScore, this.resetFunction);

  	@override
  	Widget build(BuildContext context) {
      Column c = Column(
        children: [
          Container(width: double.infinity, child: Text("U did it. Total score: $totalScore", textAlign: TextAlign.center,),) ,
          TextButton(onPressed: resetFunction, child: Text('Reset'),),
        ],
      );
    	return MyScaffold.column(c);
  	}

  // ignore: non_constant_identifier_names
  Container container_wrapper(var item){
    return Container(
      width: double.infinity,
      child: item,
    );
  }

}