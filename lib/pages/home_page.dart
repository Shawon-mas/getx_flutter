import 'package:flutter/material.dart';
import 'package:get/get.dart';
class HomePage extends StatelessWidget {

  var count=0.obs;

  void incerment(){
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Obx(() =>  Text("Value is : $count"),),
            MaterialButton(
                onPressed: (){
                  incerment();
                },
              color: Colors.redAccent,
              child: Text("Increment"),

            )

          ],
        ),
      ),
    );
  }
}
