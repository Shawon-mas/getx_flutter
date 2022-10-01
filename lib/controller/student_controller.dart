import 'package:get/get.dart';
import 'package:getx_flutter/model/student.dart';

class StudentController extends GetxController{
  var student=Student(name: 'shawon',age: 25).obs;
  void convertToUpperCase(){
    student.update((student) {
      student?.name=student.name.toString().toUpperCase();
    });
  }
}