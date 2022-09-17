import 'package:get/get.dart';
import 'package:recycile_bin_app/sign_up_controller.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpController());
  }
}
