import 'Question.dart';
import 'dart:convert';


class FBlank extends Question{
  List<Object> answer;

  FBlank(String question, List<Object> answer){
    this.question = question;
    this.answer = answer;
  }

}