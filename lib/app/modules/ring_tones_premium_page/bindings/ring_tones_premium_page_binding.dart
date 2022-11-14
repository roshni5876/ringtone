import 'package:get/get.dart';

import '../controllers/ring_tones_premium_page_controller.dart';

class RingTonesPremiumPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RingTonesPremiumPageController>(
      () => RingTonesPremiumPageController(),
    );
  }
}
