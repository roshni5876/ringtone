import 'package:get/get.dart';

import '../controllers/ring_tones_controller.dart';

class RingTonesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RingTonesController>(
      () => RingTonesController(),
    );
  }
}
