import 'Question.dart';
///type 2 questions fill in the blank
class FBlank extends Question{
  List<Object> answer;

  FBlank(String question, List<Object> answer){
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