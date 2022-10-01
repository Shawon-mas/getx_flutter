import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/model/student.dart';

import '../controller/student_controller.dart';
class ReactiveStateManger extends StatelessWidget {

  final student=Student(name: "shawon",age: 25).obs;
  StudentController studentController=Get.put(StudentController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ReactiveStateManger'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
            Obx(() =>  Text("My name is ${studentController.student.value.name}")),
             MaterialButton(
               onPressed: (){
             //  student.update((val) {val?.name=val.name.toString().toUpperCase();});
                studentController.convertToUpperCase();
               },
               color: Colors.redAccent,
               child: Text("Increment"),

             ),
           ],
        ),
      ),
    );
  }
}
