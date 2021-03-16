import 'package:flutter/material.dart';
import 'package:flutter_first_app/quiz_scaffold.dart';
import 'question.dart';
import 'answers.dart';

class quiz extends StatelessWidget {

	final List<Map<String, dynamic>> questions;
	int questionIndex;
	Function updateQuestions;

	quiz(this.updateQuestions, this.questions, this.questionIndex);

    @override
    Widget build(BuildContext context) {
		Column c = Column(
			children: [
				question(questions[questionIndex]['question']),
				for(var item in questions[questionIndex]['answers'] as List<Map<String, dynamic>>) 
					MyButton((){ updateQuestions(item['score']); }, item['text'] as String),
			],
		);
		
      	return MyScaffold.column(c);
  	}
}