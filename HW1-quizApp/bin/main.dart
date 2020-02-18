import 'dart:convert';
import 'package:http/http.dart' as http;

import 'Quiz_Manager.dart';

void main() async {
  /// parse the questions from the class website
  var url = 'http://www.cs.utep.edu/cheon/cs4381/homework/quiz?quiz=quiz01';
  var response = await http.get(url);
  //print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');
  final jsonString = response.body;
  jsoncode(jsonString);
}


void jsoncode(final jsonString) {
  var data = json.decode(jsonString);
  var trial1 = new Quiz_Manager(data);
  trial1.display();


}