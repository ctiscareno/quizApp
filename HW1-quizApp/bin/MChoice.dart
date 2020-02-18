import 'Question.dart';
import 'dart:convert';

class MChoice extends Question{
  int answer;


  MChoice(String question, int answer){
    this.stem = question;
    this.answer = answer;
  }

  @override void dispQ() {
    print('STEM: ' + stem);
    print('ANSWER: $answer');
  }


}
