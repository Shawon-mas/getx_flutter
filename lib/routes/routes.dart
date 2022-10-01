import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../pages/home_page.dart';
import '../pages/reactive_state_manger.dart';

const home = "/";
const reactive = "/introduction";
const discover = "/discover";
const signin = "/signin";
const signup = "/signup";

final pages = [
  page(home, HomePage(),),
  page(reactive, ReactiveStateManger(),),


];
GetPage page(String name, Widget page) {
  return GetPage(name: name, page: () => page);
}