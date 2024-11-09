import 'dart:developer';

class SignUpService {
  static Future signUpService({required String name,required String email,required String password,required String conpassword,}) async {
    try {
      await Future.delayed(Duration(seconds: 3));
    } catch (e) {
      log("error :$e");
    }
    return false;
  }
}
