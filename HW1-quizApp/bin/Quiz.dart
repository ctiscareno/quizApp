import 'dart:io';
import 'FBlank.dart';
import 'MChoice.dart';
import 'Question.dart';

int size;

class Quiz{
  List<Question> questions;
///counter to go through all questions
  Quiz(var quiz){
    var preguntas = quiz['question'];
    List<Question> temp = List<Question>(preguntas.length);
      for (int i = 0; i < temp.length; i++) {
        var q = preguntas[i];
        if (q['type'] == 1) {
          temp[i] = MChoice((q['stem']), (q['answer']), (q['option']));
        }
        else {
          temp[i] = FBlank(q['stem'], q['answer']);
        }
      }
    questions = temp;
  }
///Display all questions
  void dispQuiz() {
    for(int i = 0; i < questions.length; i++) {
      questions[i].dispAll();
    }
  }

  ///ask user to enter the answer
  double takeQuiz(){
    String m;
    int count = 0;
    bool valid = false;
    bool num = false;
    bool goAhead;
    print('The Quiz is 10 questions, to what question do you want to go to?');
    print('TYPE an integer between 1 - 10 below');
    //size = int.parse(stdin.readLineSync());
    while(num == false){
      try {
        size = int.parse(stdin.readLineSync());
        if((size <= 0) || (size > 10)){
          print("Integer out of range, try again");
          num = false;
        }
        else{
          num = true;
        }
      } on FormatException {
        num = false;
        print("Invalid input, try again");
      }
    }
    List<bool> errors = new List.filled(size, false);

    for(int i = 0; i < size; i++) {
      goAhead = true;
      Question q = questions[i];
      print('---' + (i + 1).toString() + '---');
      q.dispQ();
      m = stdin.readLineSync();
      valid = validResponse(m, i);
      while (valid == false) {
        print("Invalid response, try again");
        m = stdin.readLineSync();
        valid = validResponse(m, i);
      }
      if ((m.toLowerCase() == 'p') && (i >= 1)) {
          i--;
          i--;
          goAhead = false;
      }
      else if ((m.toLowerCase() == 'n') && (i < size - 1)) {
          //i++;
          goAhead = false;
      }
      if(goAhead) {
        if (q is MChoice) {
          if (int.parse(m) == q.answer) {
            count++;
            errors[i] = true;
          }
          else {
            errors[i] = false;
          }
        }
        else if (q is FBlank) {
          if (m.toLowerCase() == q.answer.toLowerCase()) {
            count++;
            errors[i] = true;
          }
          else {
            errors[i] = false;
          }
        }
        else {
          print("SOme unknown error just ocurred");
        }
      }
    }
    double score = (count/size) * 100;
    print("You got a $score % on your quiz");

    reviewQuiz(errors); //bonus points
  }

  void reviewQuiz(var errors){
    print("");
    print("Would you like to REVIEW your quiz?");
    print("Type y for yes, type n for no (default yes) *Case insensitive*");
    String n = stdin.readLineSync();
    if(n.toLowerCase() == 'n'){
      print("ok bye.");
    }
    else{
      print("You got the following questions wrong:");
      for(int i = 0; i < errors.length; i++){
        int numQuestion = i+1;
        if(errors[i] == false){
          print("--- $numQuestion ---");
          questions[i].dispAll();
        }
      }
    }
  }

  bool validResponse(String m, int i){
    Question q = questions[i];
    if((m.toLowerCase() =='p') && (i >= 1)){
      return true;
    }
    else if((m.toLowerCase() =='n')&&(i < (size - 1))){
      //print("size is $size i is $i");
      return true;
    }
    else if(q is MChoice){
      try {
        var n = int.parse(m);
        //print(n);
        if((n > 0)&&(n <= q.options.length)){
          return true;
        }
        else{
          print(m);
          print("This integer is NOT valid as one of the answer choices");
          return false;
        }
      } on FormatException {
        print('Format error! Must be a valid integer');
        return false;
      }
    }
    else if(q is FBlank){
      try {
        var n = int.parse(m);
        if(n >= 0){
          print("This is an integer, input a string for open ended");
          return false;
        }
      } on FormatException {
        return true;
      }
      return true;
    }
    else{
      return false;
    }
  }
}
