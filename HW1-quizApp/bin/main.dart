import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'Quiz_Manager.dart';

///parse question from the website using json
void main() async {
  var url = 'http://www.cs.utep.edu/cheon/cs4381/homework/quiz?quiz=quiz01';
  var response = await http.get(url);
  //print('Response body: ${response.body}');
  final jsonString = response.body;
  jsoncode(jsonString);

}

///convert json data to strings
void jsoncode(final jsonString) {
  var data = json.decode(jsonString);

  print("Obtained 10 questions from Quiz1, how many questions do you want to do? (type '1-10' or anything else for default size of 5)");
  int n = int.parse(stdin.readLineSync());
  var trial = new Quiz_Manager(data, n);

  //trial.display();
  print("----------------------------------------------------------");
  trial.interface();


}