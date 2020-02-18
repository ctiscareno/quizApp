import 'Question.dart';
import 'dart:convert';

class MChoice extends Question{
  int answer;

  MChoice(String question, int answer){
    this.question = question;
    this.answer = answer;
  }


}
