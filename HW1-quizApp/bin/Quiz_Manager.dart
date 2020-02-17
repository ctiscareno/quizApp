import 'dart:convert';
import 'package:http/http.dart' as http;

import 'FBlank.dart';
import 'MChoice.dart';
import 'Question.dart';
import 'Quiz.dart';

class Quiz_Manager{
  Quiz quiz;

  Quiz_Manager(var data){
    quiz = Quiz(data);
  }


}


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
/*import 'package:http/http.dart' as http;
import 'dart:convert';
void main() async {
  var url = 'http://www.cs.utep.edu/cheon/cs4381/grade/get.php?user=ctiscareno&pin=1417';
  var response = await http.get(url);
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');
  final jsonString = response.body;
  jsoncode(jsonString);
}


void jsoncode(final jsonString) {
  var decode = json.decode(jsonString);
  print(decode['date']);
  print(decode['grade']);
  print(decode['percent']);
  print(decode['detail']);
  var dets = decode['detail'];
  print({dets[0].(decode['name'])} );
  print('${dets[1].name}' );
  print('${dets[2].name}' );
}
 */
