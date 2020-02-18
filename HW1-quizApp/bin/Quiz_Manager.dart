import 'dart:convert';
import 'package:http/http.dart' as http;

import 'FBlank.dart';
import 'MChoice.dart';
import 'Question.dart';
import 'Quiz.dart';

class Quiz_Manager{
  Quiz quiz;

  Quiz_Manager(var data){
    var maker = data['quiz'];
    quiz = Quiz(maker);
  }


}
