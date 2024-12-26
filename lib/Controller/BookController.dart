import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class BookController extends GetxController {
  TextEditingController title = TextEditingController();
  TextEditingController author = TextEditingController();
  TextEditingController aboutAuth = TextEditingController();
  TextEditingController des = TextEditingController();
  TextEditingController language = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController pages = TextEditingController();
  TextEditingController audioLen = TextEditingController();
}
