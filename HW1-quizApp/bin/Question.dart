//import 'dart:io';

/*
void set stud_name(String name) {
  this.name = name;
}

void set stud_age(int age) {
  if(age<= 0) {
    print("Age should be greater than 5");
  }  else {
    this.age = age;
  }
}

int get stud_age {
  return age;
}
}
void main() {
  Student s1 = new Student();
  s1.stud_name = 'MARK';
  s1.stud_age = 0;
  print(s1.stud_name);
  print(s1.stud_age);
}*/

import 'dart:convert';
import 'dart:io';

class Question {
  String stem;
  //var options;
  //var answer;

  void dispQ() {
    print('STEM: ' + stem);
  }

  void dispAll() {
    print('STEM: ' + stem);
  }

}

