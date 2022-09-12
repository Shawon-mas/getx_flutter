import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../pages/home_page.dart';

const home = "/";
const introduction = "/introduction";
const discover = "/discover";
const signin = "/signin";
const signup = "/signup";

final pages = [
  page(home, HomePage(),),


];
GetPage page(String name, Widget page) {
  return GetPage(name: name, page: () => page);
}