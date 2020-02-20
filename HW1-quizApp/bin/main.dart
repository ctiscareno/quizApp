import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'Quiz_Manager.dart';

///parse question from the website using json
void main() async {
  var url1 = 'http://www.cs.utep.edu/cheon/cs4381/homework/quiz?quiz=quiz01';
  var url2 = 'http://www.cs.utep.edu/cheon/cs4381/homework/quiz?quiz=quiz02';
  var url3 = 'http://www.cs.utep.edu/cheon/cs4381/homework/quiz?quiz=quiz03';
  var response1 = await http.get(url1);
  var response2 = await http.get(url2);
  var response3 = await http.get(url3);
  //print('Response body: ${response.body}');
  final jsonString1 = response1.body;
  final jsonString2 = response2.body;
  final jsonString3 = response3.body;
  jsoncode(jsonString1, jsonString2, jsonString3);
  print("");
  print("GOODBYE!");

}

///convert json data to strings
void jsoncode(final jsonString1, final jsonString2, final jsonString3) {
  var data1 = json.decode(jsonString1);
  var data2 = json.decode(jsonString2);
  var data3 = json.decode(jsonString3);

  //print("Obtained 10 questions from Quiz1, how many questions do you want to do? (type '1-10' or anything else for default size of 5)");
  //int n = int.parse(stdin.readLineSync());
  var trial = new Quiz_Manager(data1, data2, data3);

  //trial.display();
  print("-------------------------------------- QUIZ MANAGER --------------------------------------------------");
  trial.interface();
}