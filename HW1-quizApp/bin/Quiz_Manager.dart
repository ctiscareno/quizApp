import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import 'FBlank.dart';
import 'MChoice.dart';
import 'Question.dart';
import 'Quiz.dart';

class Quiz_Manager{
  Quiz quiz;

  Quiz_Manager(var data, int n){
    var maker = data['quiz'];
    quiz = Quiz(maker, n);
  }

  void display(){
    quiz.dispQuiz();
  }

  void interface(){
    var length = quiz.questions.length;
    print("You have selected to a quiz of size: $length");
    quiz.takeQuiz();

  }


}
