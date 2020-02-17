import 'dart:convert';
import 'package:http/http.dart' as http;

import 'FBlank.dart';
import 'MChoice.dart';
import 'Question.dart';
import 'Quiz.dart';

class Quiz_Manager{
  Quiz quiz;

  Quiz_Manager(var data){
    quiz = Quiz(data);
  }


}


main(){
  String pregunta = "r u gay";
  int num = 10;
  FBlank q1 = FBlank(pregunta, pregunta);
  MChoice q2 = MChoice(pregunta, num);
  //int n = int.parse(stdin.readLineSync());

  print(q1.question + ' : ' + q1.answer);
  print(q2.question + ' : ' + q2.answer.toString() );

  print("Hellow World");
}

