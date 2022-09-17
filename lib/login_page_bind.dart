import 'package:get/get.dart';

import 'abstracts.dart';

class FirstBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Widgets());
  }
}
