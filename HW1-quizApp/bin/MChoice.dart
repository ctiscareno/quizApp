import 'Question.dart';
import 'dart:convert';

class MChoice extends Question{
  int answer;
  var options;


  MChoice(String question, int answer, var opt){
    this.stem = question;
    this.answer = answer;
    this.options = opt;
  }

  @override void dispQ() {
    print('STEM: ' + stem);
    //print('ANSWER: $answer');
    if(options.length == 2){
      print('OPTIONS: $options Select 1 for true and 2 for false');
    }
    else if(options.length == 4){
      print('OPTIONS: $options          SELECT 1 for A, 2 for B, 3 for C, 4 for D');
    }
  }

  @override void dispAll() {
    print('STEM: ' + stem);
    print('OPTIONS: $options');
    print('ANSWER: $answer');
  }


}
