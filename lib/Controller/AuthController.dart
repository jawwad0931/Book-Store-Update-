import 'package:bookstore_app/Config/Message.dart';
import 'package:bookstore_app/Pages/HomePage/HomePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController {
  RxBool isLoading = false.obs;

  final auth = FirebaseAuth.instance;
  void Loginwithgoogle() async {
    isLoading.value = true;
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      await auth.signInWithCredential(credential);
      successMessage("Login Successful");
      Get.offAll(HomePage());
    } catch (ErrorEx) {
      print(ErrorEx);
      errorMessage("Login Failed");
    }
    isLoading.value = false;
  }

  void SignOut() async {
    successMessage("Logout Successful");
    await auth.signOut();
    Get.offAll(HomePage());
  }
}
