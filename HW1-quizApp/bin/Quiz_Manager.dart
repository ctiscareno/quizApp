import 'Quiz.dart';

class Quiz_Manager{
  Quiz quiz;

  Quiz_Manager(var data){
    var maker = data['quiz'];
    quiz = Quiz(maker);
  }
  ///Display quiz #
  void display(){
    quiz.dispQuiz();
  }


}
