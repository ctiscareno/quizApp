import 'Question.dart';

///Type 1 questions : Multiple Choice questions
class MChoice extends Question{
  int answer;
  var options;


  MChoice(String question, int answer, var opt){
    this.stem = question;
    this.answer = answer;
    this.options = opt;
  }
///display questions of type 1
  @override void dispQ() {
    print('QUESTION : ' + stem);
    ///1 for true and 2 for False
    if(options.length == 2){
      //print('OPTIONS: $options  [SELECT] 1 for true and 2 for false     [PREV] type p   [NEXT] type n');
      print(" SELECT 1 for TRUE");
      print(" SELECT 2 for FALSE");
      print(" SELECT p to go to the PREVIOUS question");
      print(" SELECT n to go to the NEXT question");
    }
    else if(options.length == 4){
      //print('OPTIONS: $options          [SELECT] 1 for A, 2 for B, 3 for C, 4 for D     [PREV] type p   [NEXT] type n');
      print(" SELECT 1 for " + options[0].toString());
      print(" SELECT 2 for " + options[1].toString());
      print(" SELECT 3 for " + options[2].toString());
      print(" SELECT 4 for " + options[3].toString());
      print(" SELECT p to go to the PREVIOUS question");
      print(" SELECT n to go to the NEXT question");
    }
    else if(options.length == 5){
      //print('OPTIONS: $options          [SELECT] 1 for A, 2 for B, 3 for C, 4 for D     [PREV] type p   [NEXT] type n');
      print(" SELECT 1 for " + options[0].toString());
      print(" SELECT 2 for " + options[1].toString());
      print(" SELECT 3 for " + options[2].toString());
      print(" SELECT 4 for " + options[3].toString());
      print(" SELECT 5 for " + options[4].toString());
      print(" SELECT p to go to the PREVIOUS question");
      print(" SELECT n to go to the NEXT question");
    }
  }

  @override void dispAll() {
    print('QUESTION: ' + stem);
    print('OPTIONS: $options');
    print('ANSWER: $answer');
  }


}
