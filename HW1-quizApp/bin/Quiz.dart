import 'dart:convert';

import 'FBlank.dart';
import 'MChoice.dart';
import 'Question.dart';

class Quiz{
  List<Question> questions = List<Question>(30);

  Quiz(var data){
    List<Question> temp = List<Question>(30);
    for(int i = 0; i < 10; i++){
      if("here is where put the json part that tells if FBlank" == data){
        temp[i] = FBlank("h", "f");

      }
      else{
        temp[i] = MChoice("h", 4);
      }
    }
    questions = temp;
  }


}
