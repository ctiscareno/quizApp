import 'package:HW1_quizApp/HW1_quizApp.dart' as hw1_quiz_app;
import 'dart:io';

import 'FBlank.dart';
import 'MChoice.dart';

main(){
  String pregunta = "r u gay";
  int num = 10;
  FBlank q1 = FBlank(pregunta, pregunta);
  MChoice q2 = MChoice(pregunta, num);
  //int n = int.parse(stdin.readLineSync());

  print(q1.question + ' : ' + q1.answer);
  print(q2.question + ' : ' + q2.answer.toString() );

 print("Hellow World");
}
