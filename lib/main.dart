import 'package:flutter/material.dart';
import 'package:flutter_first_app/quiz.dart';
import 'package:flutter_first_app/result.dart';

void main() {
  	runApp(MyApp());
}

class MyApp extends StatefulWidget {
  	@override
  	State<StatefulWidget> createState() {
    // TODO: implement createState
		return MyAppState();
	}
}

class MyAppState extends State<MyApp>{

	int totalScore = 0;
	int questionIndex = 0;
	final List<Map<String, dynamic>> questions = [
		{
			'question' : 'Favourite name?',
			'answers' : [
				{'text' : 'name 1', 'score' : 10},
				{'text' : 'name 2', 'score' : 20},
				{'text' : 'name 3', 'score' : 30},
			]
		},
		{
			'question' : 'Favourite color?',
			'answers' : [
				{'text' : 'color 1', 'score' : 10},
				{'text' : 'color 2', 'score' : 20},
				{'text' : 'color 3', 'score' : 30},
				{'text' : 'color 4', 'score' : 40},
			]
		},
		{
			'question' : 'Favourite planet?',
			'answers' : [
				{'text' : 'planet 1', 'score' : 10},
				{'text' : 'planet 2', 'score' : 20},
				{'text' : 'planet 3', 'score' : 30},
				{'text' : 'planet 4', 'score' : 40},
				{'text' : 'planet 5', 'score' : 50},
			]
		}
	];

	void updateQuestions(int score){
		setState(() {
			questionIndex += 1;
		});
		totalScore += score;
	}

	void reset(){
		setState(() {
			questionIndex = 0;
		});
		totalScore = 0;
	}

  	@override
  	Widget build(BuildContext context) {
    	return MaterialApp(
      		title: 'This is a title',
      		theme: ThemeData(
        		primarySwatch: Colors.deepPurple,
      		),
      		home: questionIndex < questions.length? quiz(updateQuestions, questions, questionIndex) : result(totalScore, reset),
    	);
  	}
}
