import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/pages/reactive_state_manger.dart';
import 'package:getx_flutter/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      initialRoute: home,
      debugShowCheckedModeBanner: false,
      getPages: pages,
      home: ReactiveStateManger(),
    );
  }
}


