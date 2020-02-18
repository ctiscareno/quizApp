import 'dart:convert';
import 'dart:io';

import 'FBlank.dart';
import 'MChoice.dart';
import 'Question.dart';

class Quiz{
  List<Question> questions;

  Quiz(var quiz, int n){
    var preguntas = quiz['question'];
    List<Question> temp;
    if((n >= 1)&&(n <= 10)) {
      temp = List<Question>(n);
      for (int i = 0; i < n; i++) {
        var q = preguntas[i];
        if (q['type'] == 1) {
          temp[i] = MChoice((q['stem']), (q['answer']), (q['option']));
        }
        else {
          temp[i] = FBlank(q['stem'], q['answer']);
        }
      }
    }
    else{
      temp = List<Question>(5);
      for (int i = 0; i < 5; i++) {
        var q = preguntas[i];
        if (q['type'] == 1) {
          temp[i] = MChoice((q['stem']), (q['answer']), (q['option']));
        }
        else {
          temp[i] = FBlank(q['stem'], q['answer']);
        }
      }
    }
    questions = temp;
  }

  void dispQuiz() {
    for(int i = 0; i < questions.length; i++) {
      questions[i].dispAll();
    }
  }

  /*int getLengthQuiz(){
    return questions.length;
  } */
  double takeQuiz(){
    int n;
    String m;
    int count = 0;
    for(int i = 0; i < questions.length; i++){
      Question q = questions[i];
      int numQuestion = i+1;
      print("---$numQuestion--------------------------");
      q.dispQ();
      if(q is MChoice){
        n = int.parse(stdin.readLineSync());
        if(n == q.answer){
          count++;
        }
      }
      else if(q is FBlank){
        m = stdin.readLineSync();
        if(m.toLowerCase() == q.answer.toLowerCase()) {
          count++;
        }
      }
      else{
        print("error in subclasses");
      }
    }
    double score = (count/questions.length) * 100;
    print("You got a $score % on your quiz");
  }



}
