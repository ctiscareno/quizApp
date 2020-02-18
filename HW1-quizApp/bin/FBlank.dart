import 'Question.dart';
import 'dart:convert';


class FBlank extends Question{
  List<Object> answer;

  FBlank(String question, List<Object> answer){
    this.stem = question;
    this.answer = answer;
  }

 @override void dispQ() {
    print('STEM: ' + stem);
    print('ANSWER: $answer');
  }

}