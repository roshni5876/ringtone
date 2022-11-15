import 'package:get/get.dart';

import '../controllers/ring_tones_home_page_controller.dart';

class RingTonesHomePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RingTonesHomePageController>(
      () => RingTonesHomePageController(),
    );
  }
}
