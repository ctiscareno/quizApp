import 'Quiz.dart';

class Quiz_Manager{
  Quiz quiz;

  Quiz_Manager(var data, int n){
    var maker = data['quiz'];
    quiz = Quiz(maker, n);
  }

  void display(){
    quiz.dispQuiz();
  }
///provides the amount of questions the quiz will have
  void interface(){
    var length = quiz.questions.length;
    print("You have selected to a quiz of size: $length");
    quiz.takeQuiz();

  }


}
