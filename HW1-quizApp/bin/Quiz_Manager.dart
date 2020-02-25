import 'Quiz.dart';
import 'dart:io';

class Quiz_Manager {
  List<Quiz> quizzes = List<Quiz>(3);

  Quiz_Manager(var data1, var data2, var data3) {
    var maker1 = data1['quiz'];
    quizzes[0] = Quiz(maker1);
    var maker2 = data2['quiz'];
    quizzes[1] = Quiz(maker2);
    var maker3 = data3['quiz'];
    quizzes[2] = Quiz(maker3);
  }

  void display() {
    for (int i = 0; i < 3; i++) {
      quizzes[i].dispQuiz();
    }
  }

    ///provides the amount of questions the quiz will have
  void interface() {
      int m;
      bool num = false;
      print("I have a pool of 30 questions (3 Quizzes)");

      print("Which quiz would you like to do?");
      print("   TYPE 1 for Quiz 1");
      print("   TYPE 2 for Quiz 2");
      print("   TYPE 3 for Quiz 3");
      while(num == false){
        try {
          m = int.parse(stdin.readLineSync());
          if((m <= 0) || (m > 3)){
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
      var length = quizzes[m-1].questions.length;
      print("You have selected quiz $m of size: $length");
      quizzes[m-1].takeQuiz();
  }
}
