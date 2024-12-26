import 'package:bookstore_app/Pages/WelcomePage.dart';
import 'package:get/get.dart';

class Splacecontroller extends GetxController {
  @override
  void onInit() {
    super.onInit();
    splaceController();
  }

  void splaceController() {
    Future.delayed(Duration(seconds: 2), () {
      Get.offAll(MyHomePage());
    });
  }
}
