import 'Question.dart';
///type 1 Multiple Choice questions
class MChoice extends Question{
  int answer;


  MChoice(String question, int answer){
    this.stem = question;
    this.answer = answer;
  }
  ///provide questions of type 2
  ///provide answers
  @override void dispQ() {
    print('STEM: ' + stem);
    print('ANSWER: $answer');
  }


}
