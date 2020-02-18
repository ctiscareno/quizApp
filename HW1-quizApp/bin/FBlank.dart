import 'Question.dart';
import 'dart:convert';
import 'dart:core';


class FBlank extends Question{
  String answer;

  FBlank(String question, var ans){
    this.stem = question;
    //this.answer = ans;
    var temp= ans[0];
    this.answer = temp;
  }

 @override void dispQ() {
    print('STEM: ' + stem);
  }

  @override void dispAll() {
    print('STEM: ' + stem);
    //print('OPTIONS: $options');
    print('ANSWER: $answer');
  }

}