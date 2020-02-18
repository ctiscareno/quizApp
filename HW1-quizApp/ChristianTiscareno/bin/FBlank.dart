import 'Question.dart';
import 'dart:core';

///Type 2 questions: Fill in the Blank
class FBlank extends Question{
  String answer;

  FBlank(String question, var ans){
    this.stem = question;
    //this.answer = ans;
    var temp= ans[0];
    this.answer = temp;
  }
///provide questions of type 2
 @override void dispQ() {
    print('STEM: ' + stem);
  }
///provide the answer
  @override void dispAll() {
    print('STEM: ' + stem);
    //print('OPTIONS: $options');
    print('ANSWER: $answer');
  }

}