import 'dart:convert';

import 'FBlank.dart';
import 'MChoice.dart';
import 'Question.dart';

class Quiz{
  List<Question> questions = List<Question>(10);

  Quiz(var quiz){
    var preguntas = quiz['question'];
    List<Question> temp = List<Question>(10);
    for(int i = 0; i < 10; i++){
      var q = preguntas[i];
      if(q['type'] == 1){
        temp[i] = MChoice((q['stem']), (q['answer']));

      }
      else{
        temp[i] = FBlank(q['stem'], q['answer']);
      }
    }
    questions = temp;
  }

  void dispQuiz() {
    for(int i = 0; i < questions.length; i++) {
      questions[i].dispQ();
    }
  }


}
