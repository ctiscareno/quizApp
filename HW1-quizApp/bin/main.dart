import 'dart:convert';
import 'package:http/http.dart' as http;

import 'FBlank.dart';
import 'MChoice.dart';
import 'Question.dart';
import 'Quiz.dart';

void main() async {
  var url = 'http://www.cs.utep.edu/cheon/cs4381/homework/quiz?quiz=quiz01';
  var response = await http.get(url);
  //print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');
  final jsonString = response.body;
  jsoncode(jsonString);


  String pregunta = "r u gay";
  int num = 10;
  FBlank q1 = FBlank(pregunta, pregunta);
  MChoice q2 = MChoice(pregunta, num);
  //int n = int.parse(stdin.readLineSync());

  /*print(q1.question + ' : ' + q1.answer);
  print(q2.question + ' : ' + q2.answer.toString() );

  print("Hellow World"); */
}


void jsoncode(final jsonString) {
  var data = json.decode(jsonString);
  print("-----------------------------------------------------------------------------");
  print(data['response']);
  print(data['quiz']);
  var quiz = data['quiz'];
  //print({quiz[0].(data['quiz'])} );
  //print('${quiz[0].name}' );
  //print('${quiz['name']}' );
  print(quiz['name']);
  print(quiz['question']);
  print((quiz['question'])[0]);

  var questions = quiz['question'];
  print(questions[0]);
  print(questions[1]);

  var q0 = questions[0];
  print(q0['type']);
  print(q0['stem']);


}